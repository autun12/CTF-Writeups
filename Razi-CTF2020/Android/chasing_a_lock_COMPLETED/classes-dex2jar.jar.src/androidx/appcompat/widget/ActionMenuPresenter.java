package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R;
import androidx.appcompat.view.ActionBarPolicy;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.BaseMenuPresenter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.ShowableListMenu;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ActionProvider;
import java.util.ArrayList;

class ActionMenuPresenter extends BaseMenuPresenter implements ActionProvider.SubUiVisibilityListener {
  private static final String TAG = "ActionMenuPresenter";
  
  private final SparseBooleanArray mActionButtonGroups = new SparseBooleanArray();
  
  ActionButtonSubmenu mActionButtonPopup;
  
  private int mActionItemWidthLimit;
  
  private boolean mExpandedActionViewsExclusive;
  
  private int mMaxItems;
  
  private boolean mMaxItemsSet;
  
  private int mMinCellSize;
  
  int mOpenSubMenuId;
  
  OverflowMenuButton mOverflowButton;
  
  OverflowPopup mOverflowPopup;
  
  private Drawable mPendingOverflowIcon;
  
  private boolean mPendingOverflowIconSet;
  
  private ActionMenuPopupCallback mPopupCallback;
  
  final PopupPresenterCallback mPopupPresenterCallback = new PopupPresenterCallback();
  
  OpenOverflowRunnable mPostedOpenRunnable;
  
  private boolean mReserveOverflow;
  
  private boolean mReserveOverflowSet;
  
  private boolean mStrictWidthLimit;
  
  private int mWidthLimit;
  
  private boolean mWidthLimitSet;
  
  public ActionMenuPresenter(Context paramContext) {
    super(paramContext, R.layout.abc_action_menu_layout, R.layout.abc_action_menu_item_layout);
  }
  
  private View findViewForItem(MenuItem paramMenuItem) {
    ViewGroup viewGroup = (ViewGroup)this.mMenuView;
    if (viewGroup == null)
      return null; 
    int i = viewGroup.getChildCount();
    for (byte b = 0; b < i; b++) {
      View view = viewGroup.getChildAt(b);
      if (view instanceof MenuView.ItemView && ((MenuView.ItemView)view).getItemData() == paramMenuItem)
        return view; 
    } 
    return null;
  }
  
  public void bindItemView(MenuItemImpl paramMenuItemImpl, MenuView.ItemView paramItemView) {
    paramItemView.initialize(paramMenuItemImpl, 0);
    ActionMenuView actionMenuView = (ActionMenuView)this.mMenuView;
    ActionMenuItemView actionMenuItemView = (ActionMenuItemView)paramItemView;
    actionMenuItemView.setItemInvoker(actionMenuView);
    if (this.mPopupCallback == null)
      this.mPopupCallback = new ActionMenuPopupCallback(); 
    actionMenuItemView.setPopupCallback(this.mPopupCallback);
  }
  
  public boolean dismissPopupMenus() {
    return hideOverflowMenu() | hideSubMenus();
  }
  
  public boolean filterLeftoverView(ViewGroup paramViewGroup, int paramInt) {
    return (paramViewGroup.getChildAt(paramInt) == this.mOverflowButton) ? false : super.filterLeftoverView(paramViewGroup, paramInt);
  }
  
  public boolean flagActionItems() {
    // Byte code:
    //   0: aload_0
    //   1: astore_1
    //   2: aload_1
    //   3: getfield mMenu : Landroidx/appcompat/view/menu/MenuBuilder;
    //   6: ifnull -> 25
    //   9: aload_1
    //   10: getfield mMenu : Landroidx/appcompat/view/menu/MenuBuilder;
    //   13: invokevirtual getVisibleItems : ()Ljava/util/ArrayList;
    //   16: astore_2
    //   17: aload_2
    //   18: invokevirtual size : ()I
    //   21: istore_3
    //   22: goto -> 29
    //   25: aconst_null
    //   26: astore_2
    //   27: iconst_0
    //   28: istore_3
    //   29: aload_1
    //   30: getfield mMaxItems : I
    //   33: istore #4
    //   35: aload_1
    //   36: getfield mActionItemWidthLimit : I
    //   39: istore #5
    //   41: iconst_0
    //   42: iconst_0
    //   43: invokestatic makeMeasureSpec : (II)I
    //   46: istore #6
    //   48: aload_1
    //   49: getfield mMenuView : Landroidx/appcompat/view/menu/MenuView;
    //   52: checkcast android/view/ViewGroup
    //   55: astore #7
    //   57: iconst_0
    //   58: istore #8
    //   60: iconst_0
    //   61: istore #9
    //   63: iconst_0
    //   64: istore #10
    //   66: iconst_0
    //   67: istore #11
    //   69: iload #8
    //   71: iload_3
    //   72: if_icmpge -> 153
    //   75: aload_2
    //   76: iload #8
    //   78: invokevirtual get : (I)Ljava/lang/Object;
    //   81: checkcast androidx/appcompat/view/menu/MenuItemImpl
    //   84: astore #12
    //   86: aload #12
    //   88: invokevirtual requiresActionButton : ()Z
    //   91: ifeq -> 100
    //   94: iinc #10, 1
    //   97: goto -> 117
    //   100: aload #12
    //   102: invokevirtual requestsActionButton : ()Z
    //   105: ifeq -> 114
    //   108: iinc #11, 1
    //   111: goto -> 117
    //   114: iconst_1
    //   115: istore #9
    //   117: iload #4
    //   119: istore #13
    //   121: aload_1
    //   122: getfield mExpandedActionViewsExclusive : Z
    //   125: ifeq -> 143
    //   128: iload #4
    //   130: istore #13
    //   132: aload #12
    //   134: invokevirtual isActionViewExpanded : ()Z
    //   137: ifeq -> 143
    //   140: iconst_0
    //   141: istore #13
    //   143: iinc #8, 1
    //   146: iload #13
    //   148: istore #4
    //   150: goto -> 69
    //   153: iload #4
    //   155: istore #8
    //   157: aload_1
    //   158: getfield mReserveOverflow : Z
    //   161: ifeq -> 189
    //   164: iload #9
    //   166: ifne -> 183
    //   169: iload #4
    //   171: istore #8
    //   173: iload #11
    //   175: iload #10
    //   177: iadd
    //   178: iload #4
    //   180: if_icmple -> 189
    //   183: iload #4
    //   185: iconst_1
    //   186: isub
    //   187: istore #8
    //   189: iload #8
    //   191: iload #10
    //   193: isub
    //   194: istore #4
    //   196: aload_1
    //   197: getfield mActionButtonGroups : Landroid/util/SparseBooleanArray;
    //   200: astore #12
    //   202: aload #12
    //   204: invokevirtual clear : ()V
    //   207: aload_1
    //   208: getfield mStrictWidthLimit : Z
    //   211: ifeq -> 243
    //   214: aload_1
    //   215: getfield mMinCellSize : I
    //   218: istore #11
    //   220: iload #5
    //   222: iload #11
    //   224: idiv
    //   225: istore #10
    //   227: iload #11
    //   229: iload #5
    //   231: iload #11
    //   233: irem
    //   234: iload #10
    //   236: idiv
    //   237: iadd
    //   238: istore #14
    //   240: goto -> 249
    //   243: iconst_0
    //   244: istore #14
    //   246: iconst_0
    //   247: istore #10
    //   249: iload #5
    //   251: istore #9
    //   253: iconst_0
    //   254: istore #5
    //   256: iconst_0
    //   257: istore #11
    //   259: iload_3
    //   260: istore #15
    //   262: aload_0
    //   263: astore_1
    //   264: iload #5
    //   266: iload #15
    //   268: if_icmpge -> 770
    //   271: aload_2
    //   272: iload #5
    //   274: invokevirtual get : (I)Ljava/lang/Object;
    //   277: checkcast androidx/appcompat/view/menu/MenuItemImpl
    //   280: astore #16
    //   282: aload #16
    //   284: invokevirtual requiresActionButton : ()Z
    //   287: ifeq -> 392
    //   290: aload_1
    //   291: aload #16
    //   293: aconst_null
    //   294: aload #7
    //   296: invokevirtual getItemView : (Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    //   299: astore #17
    //   301: aload_1
    //   302: getfield mStrictWidthLimit : Z
    //   305: ifeq -> 328
    //   308: iload #10
    //   310: aload #17
    //   312: iload #14
    //   314: iload #10
    //   316: iload #6
    //   318: iconst_0
    //   319: invokestatic measureChildForCells : (Landroid/view/View;IIII)I
    //   322: isub
    //   323: istore #10
    //   325: goto -> 337
    //   328: aload #17
    //   330: iload #6
    //   332: iload #6
    //   334: invokevirtual measure : (II)V
    //   337: aload #17
    //   339: invokevirtual getMeasuredWidth : ()I
    //   342: istore_3
    //   343: iload #9
    //   345: iload_3
    //   346: isub
    //   347: istore #8
    //   349: iload #11
    //   351: ifne -> 360
    //   354: iload_3
    //   355: istore #11
    //   357: goto -> 360
    //   360: aload #16
    //   362: invokevirtual getGroupId : ()I
    //   365: istore_3
    //   366: iload_3
    //   367: ifeq -> 377
    //   370: aload #12
    //   372: iload_3
    //   373: iconst_1
    //   374: invokevirtual put : (IZ)V
    //   377: aload #16
    //   379: iconst_1
    //   380: invokevirtual setIsActionButton : (Z)V
    //   383: iload #11
    //   385: istore_3
    //   386: iload_3
    //   387: istore #11
    //   389: goto -> 760
    //   392: aload #16
    //   394: invokevirtual requestsActionButton : ()Z
    //   397: ifeq -> 750
    //   400: aload #16
    //   402: invokevirtual getGroupId : ()I
    //   405: istore #18
    //   407: aload #12
    //   409: iload #18
    //   411: invokevirtual get : (I)Z
    //   414: istore #19
    //   416: iload #4
    //   418: ifgt -> 426
    //   421: iload #19
    //   423: ifeq -> 449
    //   426: iload #9
    //   428: ifle -> 449
    //   431: aload_1
    //   432: getfield mStrictWidthLimit : Z
    //   435: ifeq -> 443
    //   438: iload #10
    //   440: ifle -> 449
    //   443: iconst_1
    //   444: istore #20
    //   446: goto -> 452
    //   449: iconst_0
    //   450: istore #20
    //   452: iload #20
    //   454: istore #21
    //   456: iload #20
    //   458: istore #22
    //   460: iload #10
    //   462: istore #13
    //   464: iload #9
    //   466: istore #8
    //   468: iload #11
    //   470: istore_3
    //   471: iload #20
    //   473: ifeq -> 610
    //   476: aload_1
    //   477: aload #16
    //   479: aconst_null
    //   480: aload #7
    //   482: invokevirtual getItemView : (Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    //   485: astore #17
    //   487: aload_1
    //   488: getfield mStrictWidthLimit : Z
    //   491: ifeq -> 530
    //   494: aload #17
    //   496: iload #14
    //   498: iload #10
    //   500: iload #6
    //   502: iconst_0
    //   503: invokestatic measureChildForCells : (Landroid/view/View;IIII)I
    //   506: istore_3
    //   507: iload #10
    //   509: iload_3
    //   510: isub
    //   511: istore #10
    //   513: iload_3
    //   514: ifne -> 523
    //   517: iconst_0
    //   518: istore #20
    //   520: goto -> 527
    //   523: iload #21
    //   525: istore #20
    //   527: goto -> 543
    //   530: aload #17
    //   532: iload #6
    //   534: iload #6
    //   536: invokevirtual measure : (II)V
    //   539: iload #21
    //   541: istore #20
    //   543: aload #17
    //   545: invokevirtual getMeasuredWidth : ()I
    //   548: istore #13
    //   550: iload #9
    //   552: iload #13
    //   554: isub
    //   555: istore #8
    //   557: iload #11
    //   559: istore_3
    //   560: iload #11
    //   562: ifne -> 568
    //   565: iload #13
    //   567: istore_3
    //   568: aload_1
    //   569: getfield mStrictWidthLimit : Z
    //   572: ifeq -> 583
    //   575: iload #8
    //   577: iflt -> 596
    //   580: goto -> 590
    //   583: iload #8
    //   585: iload_3
    //   586: iadd
    //   587: ifle -> 596
    //   590: iconst_1
    //   591: istore #11
    //   593: goto -> 599
    //   596: iconst_0
    //   597: istore #11
    //   599: iload #20
    //   601: iload #11
    //   603: iand
    //   604: istore #22
    //   606: iload #10
    //   608: istore #13
    //   610: iload #22
    //   612: ifeq -> 635
    //   615: iload #18
    //   617: ifeq -> 635
    //   620: aload #12
    //   622: iload #18
    //   624: iconst_1
    //   625: invokevirtual put : (IZ)V
    //   628: iload #4
    //   630: istore #11
    //   632: goto -> 721
    //   635: iload #4
    //   637: istore #11
    //   639: iload #19
    //   641: ifeq -> 721
    //   644: aload #12
    //   646: iload #18
    //   648: iconst_0
    //   649: invokevirtual put : (IZ)V
    //   652: iconst_0
    //   653: istore #10
    //   655: iload #4
    //   657: istore #11
    //   659: iload #10
    //   661: iload #5
    //   663: if_icmpge -> 721
    //   666: aload_2
    //   667: iload #10
    //   669: invokevirtual get : (I)Ljava/lang/Object;
    //   672: checkcast androidx/appcompat/view/menu/MenuItemImpl
    //   675: astore_1
    //   676: iload #4
    //   678: istore #11
    //   680: aload_1
    //   681: invokevirtual getGroupId : ()I
    //   684: iload #18
    //   686: if_icmpne -> 711
    //   689: iload #4
    //   691: istore #11
    //   693: aload_1
    //   694: invokevirtual isActionButton : ()Z
    //   697: ifeq -> 706
    //   700: iload #4
    //   702: iconst_1
    //   703: iadd
    //   704: istore #11
    //   706: aload_1
    //   707: iconst_0
    //   708: invokevirtual setIsActionButton : (Z)V
    //   711: iinc #10, 1
    //   714: iload #11
    //   716: istore #4
    //   718: goto -> 655
    //   721: iload #11
    //   723: istore #4
    //   725: iload #22
    //   727: ifeq -> 736
    //   730: iload #11
    //   732: iconst_1
    //   733: isub
    //   734: istore #4
    //   736: aload #16
    //   738: iload #22
    //   740: invokevirtual setIsActionButton : (Z)V
    //   743: iload #13
    //   745: istore #10
    //   747: goto -> 386
    //   750: aload #16
    //   752: iconst_0
    //   753: invokevirtual setIsActionButton : (Z)V
    //   756: iload #9
    //   758: istore #8
    //   760: iinc #5, 1
    //   763: iload #8
    //   765: istore #9
    //   767: goto -> 262
    //   770: iconst_1
    //   771: ireturn
  }
  
  public View getItemView(MenuItemImpl paramMenuItemImpl, View paramView, ViewGroup paramViewGroup) {
    boolean bool;
    View view = paramMenuItemImpl.getActionView();
    if (view == null || paramMenuItemImpl.hasCollapsibleActionView())
      view = super.getItemView(paramMenuItemImpl, paramView, paramViewGroup); 
    if (paramMenuItemImpl.isActionViewExpanded()) {
      bool = true;
    } else {
      bool = false;
    } 
    view.setVisibility(bool);
    ActionMenuView actionMenuView = (ActionMenuView)paramViewGroup;
    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
    if (!actionMenuView.checkLayoutParams(layoutParams))
      view.setLayoutParams((ViewGroup.LayoutParams)actionMenuView.generateLayoutParams(layoutParams)); 
    return view;
  }
  
  public MenuView getMenuView(ViewGroup paramViewGroup) {
    MenuView menuView2 = this.mMenuView;
    MenuView menuView1 = super.getMenuView(paramViewGroup);
    if (menuView2 != menuView1)
      ((ActionMenuView)menuView1).setPresenter(this); 
    return menuView1;
  }
  
  public Drawable getOverflowIcon() {
    OverflowMenuButton overflowMenuButton = this.mOverflowButton;
    return (overflowMenuButton != null) ? overflowMenuButton.getDrawable() : (this.mPendingOverflowIconSet ? this.mPendingOverflowIcon : null);
  }
  
  public boolean hideOverflowMenu() {
    if (this.mPostedOpenRunnable != null && this.mMenuView != null) {
      ((View)this.mMenuView).removeCallbacks(this.mPostedOpenRunnable);
      this.mPostedOpenRunnable = null;
      return true;
    } 
    OverflowPopup overflowPopup = this.mOverflowPopup;
    if (overflowPopup != null) {
      overflowPopup.dismiss();
      return true;
    } 
    return false;
  }
  
  public boolean hideSubMenus() {
    ActionButtonSubmenu actionButtonSubmenu = this.mActionButtonPopup;
    if (actionButtonSubmenu != null) {
      actionButtonSubmenu.dismiss();
      return true;
    } 
    return false;
  }
  
  public void initForMenu(Context paramContext, MenuBuilder paramMenuBuilder) {
    super.initForMenu(paramContext, paramMenuBuilder);
    Resources resources = paramContext.getResources();
    ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(paramContext);
    if (!this.mReserveOverflowSet)
      this.mReserveOverflow = actionBarPolicy.showsOverflowMenuButton(); 
    if (!this.mWidthLimitSet)
      this.mWidthLimit = actionBarPolicy.getEmbeddedMenuWidthLimit(); 
    if (!this.mMaxItemsSet)
      this.mMaxItems = actionBarPolicy.getMaxActionButtons(); 
    int i = this.mWidthLimit;
    if (this.mReserveOverflow) {
      if (this.mOverflowButton == null) {
        this.mOverflowButton = new OverflowMenuButton(this.mSystemContext);
        if (this.mPendingOverflowIconSet) {
          this.mOverflowButton.setImageDrawable(this.mPendingOverflowIcon);
          this.mPendingOverflowIcon = null;
          this.mPendingOverflowIconSet = false;
        } 
        int j = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.mOverflowButton.measure(j, j);
      } 
      i -= this.mOverflowButton.getMeasuredWidth();
    } else {
      this.mOverflowButton = null;
    } 
    this.mActionItemWidthLimit = i;
    this.mMinCellSize = (int)((resources.getDisplayMetrics()).density * 56.0F);
  }
  
  public boolean isOverflowMenuShowPending() {
    return (this.mPostedOpenRunnable != null || isOverflowMenuShowing());
  }
  
  public boolean isOverflowMenuShowing() {
    boolean bool;
    OverflowPopup overflowPopup = this.mOverflowPopup;
    if (overflowPopup != null && overflowPopup.isShowing()) {
      bool = true;
    } else {
      bool = false;
    } 
    return bool;
  }
  
  public boolean isOverflowReserved() {
    return this.mReserveOverflow;
  }
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean) {
    dismissPopupMenus();
    super.onCloseMenu(paramMenuBuilder, paramBoolean);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration) {
    if (!this.mMaxItemsSet)
      this.mMaxItems = ActionBarPolicy.get(this.mContext).getMaxActionButtons(); 
    if (this.mMenu != null)
      this.mMenu.onItemsChanged(true); 
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable) {
    if (!(paramParcelable instanceof SavedState))
      return; 
    paramParcelable = paramParcelable;
    if (((SavedState)paramParcelable).openSubMenuId > 0) {
      MenuItem menuItem = this.mMenu.findItem(((SavedState)paramParcelable).openSubMenuId);
      if (menuItem != null)
        onSubMenuSelected((SubMenuBuilder)menuItem.getSubMenu()); 
    } 
  }
  
  public Parcelable onSaveInstanceState() {
    SavedState savedState = new SavedState();
    savedState.openSubMenuId = this.mOpenSubMenuId;
    return savedState;
  }
  
  public boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder) {
    boolean bool = paramSubMenuBuilder.hasVisibleItems();
    boolean bool1 = false;
    if (!bool)
      return false; 
    SubMenuBuilder subMenuBuilder;
    for (subMenuBuilder = paramSubMenuBuilder; subMenuBuilder.getParentMenu() != this.mMenu; subMenuBuilder = (SubMenuBuilder)subMenuBuilder.getParentMenu());
    View view = findViewForItem(subMenuBuilder.getItem());
    if (view == null)
      return false; 
    this.mOpenSubMenuId = paramSubMenuBuilder.getItem().getItemId();
    int i = paramSubMenuBuilder.size();
    byte b = 0;
    while (true) {
      bool = bool1;
      if (b < i) {
        MenuItem menuItem = paramSubMenuBuilder.getItem(b);
        if (menuItem.isVisible() && menuItem.getIcon() != null) {
          bool = true;
          break;
        } 
        b++;
        continue;
      } 
      break;
    } 
    this.mActionButtonPopup = new ActionButtonSubmenu(this.mContext, paramSubMenuBuilder, view);
    this.mActionButtonPopup.setForceShowIcon(bool);
    this.mActionButtonPopup.show();
    super.onSubMenuSelected(paramSubMenuBuilder);
    return true;
  }
  
  public void onSubUiVisibilityChanged(boolean paramBoolean) {
    if (paramBoolean) {
      super.onSubMenuSelected(null);
    } else if (this.mMenu != null) {
      this.mMenu.close(false);
    } 
  }
  
  public void setExpandedActionViewsExclusive(boolean paramBoolean) {
    this.mExpandedActionViewsExclusive = paramBoolean;
  }
  
  public void setItemLimit(int paramInt) {
    this.mMaxItems = paramInt;
    this.mMaxItemsSet = true;
  }
  
  public void setMenuView(ActionMenuView paramActionMenuView) {
    this.mMenuView = paramActionMenuView;
    paramActionMenuView.initialize(this.mMenu);
  }
  
  public void setOverflowIcon(Drawable paramDrawable) {
    OverflowMenuButton overflowMenuButton = this.mOverflowButton;
    if (overflowMenuButton != null) {
      overflowMenuButton.setImageDrawable(paramDrawable);
    } else {
      this.mPendingOverflowIconSet = true;
      this.mPendingOverflowIcon = paramDrawable;
    } 
  }
  
  public void setReserveOverflow(boolean paramBoolean) {
    this.mReserveOverflow = paramBoolean;
    this.mReserveOverflowSet = true;
  }
  
  public void setWidthLimit(int paramInt, boolean paramBoolean) {
    this.mWidthLimit = paramInt;
    this.mStrictWidthLimit = paramBoolean;
    this.mWidthLimitSet = true;
  }
  
  public boolean shouldIncludeItem(int paramInt, MenuItemImpl paramMenuItemImpl) {
    return paramMenuItemImpl.isActionButton();
  }
  
  public boolean showOverflowMenu() {
    if (this.mReserveOverflow && !isOverflowMenuShowing() && this.mMenu != null && this.mMenuView != null && this.mPostedOpenRunnable == null && !this.mMenu.getNonActionItems().isEmpty()) {
      this.mPostedOpenRunnable = new OpenOverflowRunnable(new OverflowPopup(this.mContext, this.mMenu, (View)this.mOverflowButton, true));
      ((View)this.mMenuView).post(this.mPostedOpenRunnable);
      return true;
    } 
    return false;
  }
  
  public void updateMenuView(boolean paramBoolean) {
    super.updateMenuView(paramBoolean);
    ((View)this.mMenuView).requestLayout();
    MenuBuilder<MenuItemImpl> menuBuilder = this.mMenu;
    byte b = 0;
    if (menuBuilder != null) {
      ArrayList<MenuItemImpl> arrayList = this.mMenu.getActionItems();
      int j = arrayList.size();
      for (byte b1 = 0; b1 < j; b1++) {
        ActionProvider actionProvider = ((MenuItemImpl)arrayList.get(b1)).getSupportActionProvider();
        if (actionProvider != null)
          actionProvider.setSubUiVisibilityListener(this); 
      } 
    } 
    if (this.mMenu != null) {
      ArrayList arrayList = this.mMenu.getNonActionItems();
    } else {
      menuBuilder = null;
    } 
    int i = b;
    if (this.mReserveOverflow) {
      i = b;
      if (menuBuilder != null) {
        int j = menuBuilder.size();
        if (j == 1) {
          i = ((MenuItemImpl)menuBuilder.get(0)).isActionViewExpanded() ^ true;
        } else {
          i = b;
          if (j > 0)
            i = 1; 
        } 
      } 
    } 
    if (i != 0) {
      if (this.mOverflowButton == null)
        this.mOverflowButton = new OverflowMenuButton(this.mSystemContext); 
      ViewGroup viewGroup = (ViewGroup)this.mOverflowButton.getParent();
      if (viewGroup != this.mMenuView) {
        if (viewGroup != null)
          viewGroup.removeView((View)this.mOverflowButton); 
        viewGroup = (ActionMenuView)this.mMenuView;
        viewGroup.addView((View)this.mOverflowButton, (ViewGroup.LayoutParams)viewGroup.generateOverflowButtonLayoutParams());
      } 
    } else {
      OverflowMenuButton overflowMenuButton = this.mOverflowButton;
      if (overflowMenuButton != null && overflowMenuButton.getParent() == this.mMenuView)
        ((ViewGroup)this.mMenuView).removeView((View)this.mOverflowButton); 
    } 
    ((ActionMenuView)this.mMenuView).setOverflowReserved(this.mReserveOverflow);
  }
  
  private class ActionButtonSubmenu extends MenuPopupHelper {
    public ActionButtonSubmenu(Context param1Context, SubMenuBuilder param1SubMenuBuilder, View param1View) {
      super(param1Context, (MenuBuilder)param1SubMenuBuilder, param1View, false, R.attr.actionOverflowMenuStyle);
      if (!((MenuItemImpl)param1SubMenuBuilder.getItem()).isActionButton()) {
        ActionMenuPresenter.OverflowMenuButton overflowMenuButton;
        if (ActionMenuPresenter.this.mOverflowButton == null) {
          View view = (View)ActionMenuPresenter.this.mMenuView;
        } else {
          overflowMenuButton = ActionMenuPresenter.this.mOverflowButton;
        } 
        setAnchorView((View)overflowMenuButton);
      } 
      setPresenterCallback(ActionMenuPresenter.this.mPopupPresenterCallback);
    }
    
    protected void onDismiss() {
      ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
      actionMenuPresenter.mActionButtonPopup = null;
      actionMenuPresenter.mOpenSubMenuId = 0;
      super.onDismiss();
    }
  }
  
  private class ActionMenuPopupCallback extends ActionMenuItemView.PopupCallback {
    public ShowableListMenu getPopup() {
      ShowableListMenu showableListMenu;
      if (ActionMenuPresenter.this.mActionButtonPopup != null) {
        showableListMenu = (ShowableListMenu)ActionMenuPresenter.this.mActionButtonPopup.getPopup();
      } else {
        showableListMenu = null;
      } 
      return showableListMenu;
    }
  }
  
  private class OpenOverflowRunnable implements Runnable {
    private ActionMenuPresenter.OverflowPopup mPopup;
    
    public OpenOverflowRunnable(ActionMenuPresenter.OverflowPopup param1OverflowPopup) {
      this.mPopup = param1OverflowPopup;
    }
    
    public void run() {
      if (ActionMenuPresenter.this.mMenu != null)
        ActionMenuPresenter.this.mMenu.changeMenuMode(); 
      View view = (View)ActionMenuPresenter.this.mMenuView;
      if (view != null && view.getWindowToken() != null && this.mPopup.tryShow())
        ActionMenuPresenter.this.mOverflowPopup = this.mPopup; 
      ActionMenuPresenter.this.mPostedOpenRunnable = null;
    }
  }
  
  private class OverflowMenuButton extends AppCompatImageView implements ActionMenuView.ActionMenuChildView {
    public OverflowMenuButton(Context param1Context) {
      super(param1Context, (AttributeSet)null, R.attr.actionOverflowButtonStyle);
      setClickable(true);
      setFocusable(true);
      setVisibility(0);
      setEnabled(true);
      TooltipCompat.setTooltipText((View)this, getContentDescription());
      setOnTouchListener(new ForwardingListener((View)this) {
            public ShowableListMenu getPopup() {
              return (ShowableListMenu)((ActionMenuPresenter.this.mOverflowPopup == null) ? null : ActionMenuPresenter.this.mOverflowPopup.getPopup());
            }
            
            public boolean onForwardingStarted() {
              ActionMenuPresenter.this.showOverflowMenu();
              return true;
            }
            
            public boolean onForwardingStopped() {
              if (ActionMenuPresenter.this.mPostedOpenRunnable != null)
                return false; 
              ActionMenuPresenter.this.hideOverflowMenu();
              return true;
            }
          });
    }
    
    public boolean needsDividerAfter() {
      return false;
    }
    
    public boolean needsDividerBefore() {
      return false;
    }
    
    public boolean performClick() {
      if (super.performClick())
        return true; 
      playSoundEffect(0);
      ActionMenuPresenter.this.showOverflowMenu();
      return true;
    }
    
    protected boolean setFrame(int param1Int1, int param1Int2, int param1Int3, int param1Int4) {
      boolean bool = super.setFrame(param1Int1, param1Int2, param1Int3, param1Int4);
      Drawable drawable1 = getDrawable();
      Drawable drawable2 = getBackground();
      if (drawable1 != null && drawable2 != null) {
        int i = getWidth();
        param1Int4 = getHeight();
        param1Int1 = Math.max(i, param1Int4) / 2;
        int j = getPaddingLeft();
        int k = getPaddingRight();
        param1Int3 = getPaddingTop();
        param1Int2 = getPaddingBottom();
        j = (i + j - k) / 2;
        param1Int2 = (param1Int4 + param1Int3 - param1Int2) / 2;
        DrawableCompat.setHotspotBounds(drawable2, j - param1Int1, param1Int2 - param1Int1, j + param1Int1, param1Int2 + param1Int1);
      } 
      return bool;
    }
  }
  
  class null extends ForwardingListener {
    null(View param1View) {
      super(param1View);
    }
    
    public ShowableListMenu getPopup() {
      return (ShowableListMenu)((ActionMenuPresenter.this.mOverflowPopup == null) ? null : ActionMenuPresenter.this.mOverflowPopup.getPopup());
    }
    
    public boolean onForwardingStarted() {
      ActionMenuPresenter.this.showOverflowMenu();
      return true;
    }
    
    public boolean onForwardingStopped() {
      if (ActionMenuPresenter.this.mPostedOpenRunnable != null)
        return false; 
      ActionMenuPresenter.this.hideOverflowMenu();
      return true;
    }
  }
  
  private class OverflowPopup extends MenuPopupHelper {
    public OverflowPopup(Context param1Context, MenuBuilder param1MenuBuilder, View param1View, boolean param1Boolean) {
      super(param1Context, param1MenuBuilder, param1View, param1Boolean, R.attr.actionOverflowMenuStyle);
      setGravity(8388613);
      setPresenterCallback(ActionMenuPresenter.this.mPopupPresenterCallback);
    }
    
    protected void onDismiss() {
      if (ActionMenuPresenter.this.mMenu != null)
        ActionMenuPresenter.this.mMenu.close(); 
      ActionMenuPresenter.this.mOverflowPopup = null;
      super.onDismiss();
    }
  }
  
  private class PopupPresenterCallback implements MenuPresenter.Callback {
    public void onCloseMenu(MenuBuilder param1MenuBuilder, boolean param1Boolean) {
      if (param1MenuBuilder instanceof SubMenuBuilder)
        param1MenuBuilder.getRootMenu().close(false); 
      MenuPresenter.Callback callback = ActionMenuPresenter.this.getCallback();
      if (callback != null)
        callback.onCloseMenu(param1MenuBuilder, param1Boolean); 
    }
    
    public boolean onOpenSubMenu(MenuBuilder param1MenuBuilder) {
      MenuBuilder menuBuilder = ActionMenuPresenter.this.mMenu;
      boolean bool = false;
      if (param1MenuBuilder == menuBuilder)
        return false; 
      ActionMenuPresenter.this.mOpenSubMenuId = ((SubMenuBuilder)param1MenuBuilder).getItem().getItemId();
      MenuPresenter.Callback callback = ActionMenuPresenter.this.getCallback();
      if (callback != null)
        bool = callback.onOpenSubMenu(param1MenuBuilder); 
      return bool;
    }
  }
  
  private static class SavedState implements Parcelable {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
        public ActionMenuPresenter.SavedState createFromParcel(Parcel param2Parcel) {
          return new ActionMenuPresenter.SavedState(param2Parcel);
        }
        
        public ActionMenuPresenter.SavedState[] newArray(int param2Int) {
          return new ActionMenuPresenter.SavedState[param2Int];
        }
      };
    
    public int openSubMenuId;
    
    SavedState() {}
    
    SavedState(Parcel param1Parcel) {
      this.openSubMenuId = param1Parcel.readInt();
    }
    
    public int describeContents() {
      return 0;
    }
    
    public void writeToParcel(Parcel param1Parcel, int param1Int) {
      param1Parcel.writeInt(this.openSubMenuId);
    }
  }
  
  class null implements Parcelable.Creator<SavedState> {
    public ActionMenuPresenter.SavedState createFromParcel(Parcel param1Parcel) {
      return new ActionMenuPresenter.SavedState(param1Parcel);
    }
    
    public ActionMenuPresenter.SavedState[] newArray(int param1Int) {
      return new ActionMenuPresenter.SavedState[param1Int];
    }
  }
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/appcompat/widget/ActionMenuPresenter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */