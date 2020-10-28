package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Parcelable;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.R;
import androidx.appcompat.widget.MenuItemHoverListener;
import androidx.appcompat.widget.MenuPopupWindow;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class CascadingMenuPopup extends MenuPopup implements MenuPresenter, View.OnKeyListener, PopupWindow.OnDismissListener {
  static final int HORIZ_POSITION_LEFT = 0;
  
  static final int HORIZ_POSITION_RIGHT = 1;
  
  private static final int ITEM_LAYOUT = R.layout.abc_cascading_menu_item_layout;
  
  static final int SUBMENU_TIMEOUT_MS = 200;
  
  private View mAnchorView;
  
  private final View.OnAttachStateChangeListener mAttachStateChangeListener = new View.OnAttachStateChangeListener() {
      public void onViewAttachedToWindow(View param1View) {}
      
      public void onViewDetachedFromWindow(View param1View) {
        if (CascadingMenuPopup.this.mTreeObserver != null) {
          if (!CascadingMenuPopup.this.mTreeObserver.isAlive())
            CascadingMenuPopup.this.mTreeObserver = param1View.getViewTreeObserver(); 
          CascadingMenuPopup.this.mTreeObserver.removeGlobalOnLayoutListener(CascadingMenuPopup.this.mGlobalLayoutListener);
        } 
        param1View.removeOnAttachStateChangeListener(this);
      }
    };
  
  private final Context mContext;
  
  private int mDropDownGravity = 0;
  
  private boolean mForceShowIcon;
  
  final ViewTreeObserver.OnGlobalLayoutListener mGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() {
      public void onGlobalLayout() {
        if (CascadingMenuPopup.this.isShowing() && CascadingMenuPopup.this.mShowingMenus.size() > 0 && !((CascadingMenuPopup.CascadingMenuInfo)CascadingMenuPopup.this.mShowingMenus.get(0)).window.isModal()) {
          View view = CascadingMenuPopup.this.mShownAnchorView;
          if (view == null || !view.isShown()) {
            CascadingMenuPopup.this.dismiss();
            return;
          } 
          Iterator<CascadingMenuPopup.CascadingMenuInfo> iterator = CascadingMenuPopup.this.mShowingMenus.iterator();
          while (iterator.hasNext())
            ((CascadingMenuPopup.CascadingMenuInfo)iterator.next()).window.show(); 
        } 
      }
    };
  
  private boolean mHasXOffset;
  
  private boolean mHasYOffset;
  
  private int mLastPosition;
  
  private final MenuItemHoverListener mMenuItemHoverListener = new MenuItemHoverListener() {
      public void onItemHoverEnter(MenuBuilder param1MenuBuilder, MenuItem param1MenuItem) {
        // Byte code:
        //   0: aload_0
        //   1: getfield this$0 : Landroidx/appcompat/view/menu/CascadingMenuPopup;
        //   4: getfield mSubMenuHoverHandler : Landroid/os/Handler;
        //   7: astore_3
        //   8: aconst_null
        //   9: astore #4
        //   11: aload_3
        //   12: aconst_null
        //   13: invokevirtual removeCallbacksAndMessages : (Ljava/lang/Object;)V
        //   16: aload_0
        //   17: getfield this$0 : Landroidx/appcompat/view/menu/CascadingMenuPopup;
        //   20: getfield mShowingMenus : Ljava/util/List;
        //   23: invokeinterface size : ()I
        //   28: istore #5
        //   30: iconst_0
        //   31: istore #6
        //   33: iload #6
        //   35: iload #5
        //   37: if_icmpge -> 73
        //   40: aload_1
        //   41: aload_0
        //   42: getfield this$0 : Landroidx/appcompat/view/menu/CascadingMenuPopup;
        //   45: getfield mShowingMenus : Ljava/util/List;
        //   48: iload #6
        //   50: invokeinterface get : (I)Ljava/lang/Object;
        //   55: checkcast androidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo
        //   58: getfield menu : Landroidx/appcompat/view/menu/MenuBuilder;
        //   61: if_acmpne -> 67
        //   64: goto -> 76
        //   67: iinc #6, 1
        //   70: goto -> 33
        //   73: iconst_m1
        //   74: istore #6
        //   76: iload #6
        //   78: iconst_m1
        //   79: if_icmpne -> 83
        //   82: return
        //   83: iinc #6, 1
        //   86: iload #6
        //   88: aload_0
        //   89: getfield this$0 : Landroidx/appcompat/view/menu/CascadingMenuPopup;
        //   92: getfield mShowingMenus : Ljava/util/List;
        //   95: invokeinterface size : ()I
        //   100: if_icmpge -> 122
        //   103: aload_0
        //   104: getfield this$0 : Landroidx/appcompat/view/menu/CascadingMenuPopup;
        //   107: getfield mShowingMenus : Ljava/util/List;
        //   110: iload #6
        //   112: invokeinterface get : (I)Ljava/lang/Object;
        //   117: checkcast androidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo
        //   120: astore #4
        //   122: new androidx/appcompat/view/menu/CascadingMenuPopup$3$1
        //   125: dup
        //   126: aload_0
        //   127: aload #4
        //   129: aload_2
        //   130: aload_1
        //   131: invokespecial <init> : (Landroidx/appcompat/view/menu/CascadingMenuPopup$3;Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuBuilder;)V
        //   134: astore_2
        //   135: invokestatic uptimeMillis : ()J
        //   138: lstore #7
        //   140: aload_0
        //   141: getfield this$0 : Landroidx/appcompat/view/menu/CascadingMenuPopup;
        //   144: getfield mSubMenuHoverHandler : Landroid/os/Handler;
        //   147: aload_2
        //   148: aload_1
        //   149: lload #7
        //   151: ldc2_w 200
        //   154: ladd
        //   155: invokevirtual postAtTime : (Ljava/lang/Runnable;Ljava/lang/Object;J)Z
        //   158: pop
        //   159: return
      }
      
      public void onItemHoverExit(MenuBuilder param1MenuBuilder, MenuItem param1MenuItem) {
        CascadingMenuPopup.this.mSubMenuHoverHandler.removeCallbacksAndMessages(param1MenuBuilder);
      }
    };
  
  private final int mMenuMaxWidth;
  
  private PopupWindow.OnDismissListener mOnDismissListener;
  
  private final boolean mOverflowOnly;
  
  private final List<MenuBuilder> mPendingMenus = new ArrayList<MenuBuilder>();
  
  private final int mPopupStyleAttr;
  
  private final int mPopupStyleRes;
  
  private MenuPresenter.Callback mPresenterCallback;
  
  private int mRawDropDownGravity = 0;
  
  boolean mShouldCloseImmediately;
  
  private boolean mShowTitle;
  
  final List<CascadingMenuInfo> mShowingMenus = new ArrayList<CascadingMenuInfo>();
  
  View mShownAnchorView;
  
  final Handler mSubMenuHoverHandler;
  
  ViewTreeObserver mTreeObserver;
  
  private int mXOffset;
  
  private int mYOffset;
  
  public CascadingMenuPopup(Context paramContext, View paramView, int paramInt1, int paramInt2, boolean paramBoolean) {
    this.mContext = paramContext;
    this.mAnchorView = paramView;
    this.mPopupStyleAttr = paramInt1;
    this.mPopupStyleRes = paramInt2;
    this.mOverflowOnly = paramBoolean;
    this.mForceShowIcon = false;
    this.mLastPosition = getInitialMenuPosition();
    Resources resources = paramContext.getResources();
    this.mMenuMaxWidth = Math.max((resources.getDisplayMetrics()).widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
    this.mSubMenuHoverHandler = new Handler();
  }
  
  private MenuPopupWindow createPopupWindow() {
    MenuPopupWindow menuPopupWindow = new MenuPopupWindow(this.mContext, null, this.mPopupStyleAttr, this.mPopupStyleRes);
    menuPopupWindow.setHoverListener(this.mMenuItemHoverListener);
    menuPopupWindow.setOnItemClickListener(this);
    menuPopupWindow.setOnDismissListener(this);
    menuPopupWindow.setAnchorView(this.mAnchorView);
    menuPopupWindow.setDropDownGravity(this.mDropDownGravity);
    menuPopupWindow.setModal(true);
    menuPopupWindow.setInputMethodMode(2);
    return menuPopupWindow;
  }
  
  private int findIndexOfAddedMenu(MenuBuilder paramMenuBuilder) {
    int i = this.mShowingMenus.size();
    for (byte b = 0; b < i; b++) {
      if (paramMenuBuilder == ((CascadingMenuInfo)this.mShowingMenus.get(b)).menu)
        return b; 
    } 
    return -1;
  }
  
  private MenuItem findMenuItemForSubmenu(MenuBuilder paramMenuBuilder1, MenuBuilder paramMenuBuilder2) {
    int i = paramMenuBuilder1.size();
    for (byte b = 0; b < i; b++) {
      MenuItem menuItem = paramMenuBuilder1.getItem(b);
      if (menuItem.hasSubMenu() && paramMenuBuilder2 == menuItem.getSubMenu())
        return menuItem; 
    } 
    return null;
  }
  
  private View findParentViewForSubmenu(CascadingMenuInfo paramCascadingMenuInfo, MenuBuilder paramMenuBuilder) {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: getfield menu : Landroidx/appcompat/view/menu/MenuBuilder;
    //   5: aload_2
    //   6: invokespecial findMenuItemForSubmenu : (Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuBuilder;)Landroid/view/MenuItem;
    //   9: astore_2
    //   10: aload_2
    //   11: ifnonnull -> 16
    //   14: aconst_null
    //   15: areturn
    //   16: aload_1
    //   17: invokevirtual getListView : ()Landroid/widget/ListView;
    //   20: astore_3
    //   21: aload_3
    //   22: invokevirtual getAdapter : ()Landroid/widget/ListAdapter;
    //   25: astore_1
    //   26: aload_1
    //   27: instanceof android/widget/HeaderViewListAdapter
    //   30: istore #4
    //   32: iconst_0
    //   33: istore #5
    //   35: iload #4
    //   37: ifeq -> 62
    //   40: aload_1
    //   41: checkcast android/widget/HeaderViewListAdapter
    //   44: astore_1
    //   45: aload_1
    //   46: invokevirtual getHeadersCount : ()I
    //   49: istore #6
    //   51: aload_1
    //   52: invokevirtual getWrappedAdapter : ()Landroid/widget/ListAdapter;
    //   55: checkcast androidx/appcompat/view/menu/MenuAdapter
    //   58: astore_1
    //   59: goto -> 70
    //   62: aload_1
    //   63: checkcast androidx/appcompat/view/menu/MenuAdapter
    //   66: astore_1
    //   67: iconst_0
    //   68: istore #6
    //   70: aload_1
    //   71: invokevirtual getCount : ()I
    //   74: istore #7
    //   76: iload #5
    //   78: iload #7
    //   80: if_icmpge -> 102
    //   83: aload_2
    //   84: aload_1
    //   85: iload #5
    //   87: invokevirtual getItem : (I)Landroidx/appcompat/view/menu/MenuItemImpl;
    //   90: if_acmpne -> 96
    //   93: goto -> 105
    //   96: iinc #5, 1
    //   99: goto -> 76
    //   102: iconst_m1
    //   103: istore #5
    //   105: iload #5
    //   107: iconst_m1
    //   108: if_icmpne -> 113
    //   111: aconst_null
    //   112: areturn
    //   113: iload #5
    //   115: iload #6
    //   117: iadd
    //   118: aload_3
    //   119: invokevirtual getFirstVisiblePosition : ()I
    //   122: isub
    //   123: istore #5
    //   125: iload #5
    //   127: iflt -> 149
    //   130: iload #5
    //   132: aload_3
    //   133: invokevirtual getChildCount : ()I
    //   136: if_icmplt -> 142
    //   139: goto -> 149
    //   142: aload_3
    //   143: iload #5
    //   145: invokevirtual getChildAt : (I)Landroid/view/View;
    //   148: areturn
    //   149: aconst_null
    //   150: areturn
  }
  
  private int getInitialMenuPosition() {
    int i = ViewCompat.getLayoutDirection(this.mAnchorView);
    boolean bool = true;
    if (i == 1)
      bool = false; 
    return bool;
  }
  
  private int getNextMenuPosition(int paramInt) {
    List<CascadingMenuInfo> list = this.mShowingMenus;
    ListView listView = ((CascadingMenuInfo)list.get(list.size() - 1)).getListView();
    int[] arrayOfInt = new int[2];
    listView.getLocationOnScreen(arrayOfInt);
    Rect rect = new Rect();
    this.mShownAnchorView.getWindowVisibleDisplayFrame(rect);
    return (this.mLastPosition == 1) ? ((arrayOfInt[0] + listView.getWidth() + paramInt > rect.right) ? 0 : 1) : ((arrayOfInt[0] - paramInt < 0) ? 1 : 0);
  }
  
  private void showMenu(MenuBuilder paramMenuBuilder) {
    // Byte code:
    //   0: aload_0
    //   1: getfield mContext : Landroid/content/Context;
    //   4: invokestatic from : (Landroid/content/Context;)Landroid/view/LayoutInflater;
    //   7: astore_2
    //   8: new androidx/appcompat/view/menu/MenuAdapter
    //   11: dup
    //   12: aload_1
    //   13: aload_2
    //   14: aload_0
    //   15: getfield mOverflowOnly : Z
    //   18: getstatic androidx/appcompat/view/menu/CascadingMenuPopup.ITEM_LAYOUT : I
    //   21: invokespecial <init> : (Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/LayoutInflater;ZI)V
    //   24: astore_3
    //   25: aload_0
    //   26: invokevirtual isShowing : ()Z
    //   29: ifne -> 47
    //   32: aload_0
    //   33: getfield mForceShowIcon : Z
    //   36: ifeq -> 47
    //   39: aload_3
    //   40: iconst_1
    //   41: invokevirtual setForceShowIcon : (Z)V
    //   44: goto -> 62
    //   47: aload_0
    //   48: invokevirtual isShowing : ()Z
    //   51: ifeq -> 62
    //   54: aload_3
    //   55: aload_1
    //   56: invokestatic shouldPreserveIconSpacing : (Landroidx/appcompat/view/menu/MenuBuilder;)Z
    //   59: invokevirtual setForceShowIcon : (Z)V
    //   62: aload_3
    //   63: aconst_null
    //   64: aload_0
    //   65: getfield mContext : Landroid/content/Context;
    //   68: aload_0
    //   69: getfield mMenuMaxWidth : I
    //   72: invokestatic measureIndividualMenuWidth : (Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I
    //   75: istore #4
    //   77: aload_0
    //   78: invokespecial createPopupWindow : ()Landroidx/appcompat/widget/MenuPopupWindow;
    //   81: astore #5
    //   83: aload #5
    //   85: aload_3
    //   86: invokevirtual setAdapter : (Landroid/widget/ListAdapter;)V
    //   89: aload #5
    //   91: iload #4
    //   93: invokevirtual setContentWidth : (I)V
    //   96: aload #5
    //   98: aload_0
    //   99: getfield mDropDownGravity : I
    //   102: invokevirtual setDropDownGravity : (I)V
    //   105: aload_0
    //   106: getfield mShowingMenus : Ljava/util/List;
    //   109: invokeinterface size : ()I
    //   114: ifle -> 151
    //   117: aload_0
    //   118: getfield mShowingMenus : Ljava/util/List;
    //   121: astore_3
    //   122: aload_3
    //   123: aload_3
    //   124: invokeinterface size : ()I
    //   129: iconst_1
    //   130: isub
    //   131: invokeinterface get : (I)Ljava/lang/Object;
    //   136: checkcast androidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo
    //   139: astore_3
    //   140: aload_0
    //   141: aload_3
    //   142: aload_1
    //   143: invokespecial findParentViewForSubmenu : (Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroidx/appcompat/view/menu/MenuBuilder;)Landroid/view/View;
    //   146: astore #6
    //   148: goto -> 156
    //   151: aconst_null
    //   152: astore_3
    //   153: aload_3
    //   154: astore #6
    //   156: aload #6
    //   158: ifnull -> 395
    //   161: aload #5
    //   163: iconst_0
    //   164: invokevirtual setTouchModal : (Z)V
    //   167: aload #5
    //   169: aconst_null
    //   170: invokevirtual setEnterTransition : (Ljava/lang/Object;)V
    //   173: aload_0
    //   174: iload #4
    //   176: invokespecial getNextMenuPosition : (I)I
    //   179: istore #7
    //   181: iload #7
    //   183: iconst_1
    //   184: if_icmpne -> 193
    //   187: iconst_1
    //   188: istore #8
    //   190: goto -> 196
    //   193: iconst_0
    //   194: istore #8
    //   196: aload_0
    //   197: iload #7
    //   199: putfield mLastPosition : I
    //   202: getstatic android/os/Build$VERSION.SDK_INT : I
    //   205: bipush #26
    //   207: if_icmplt -> 226
    //   210: aload #5
    //   212: aload #6
    //   214: invokevirtual setAnchorView : (Landroid/view/View;)V
    //   217: iconst_0
    //   218: istore #7
    //   220: iconst_0
    //   221: istore #9
    //   223: goto -> 315
    //   226: iconst_2
    //   227: newarray int
    //   229: astore #10
    //   231: aload_0
    //   232: getfield mAnchorView : Landroid/view/View;
    //   235: aload #10
    //   237: invokevirtual getLocationOnScreen : ([I)V
    //   240: iconst_2
    //   241: newarray int
    //   243: astore #11
    //   245: aload #6
    //   247: aload #11
    //   249: invokevirtual getLocationOnScreen : ([I)V
    //   252: aload_0
    //   253: getfield mDropDownGravity : I
    //   256: bipush #7
    //   258: iand
    //   259: iconst_5
    //   260: if_icmpne -> 293
    //   263: aload #10
    //   265: iconst_0
    //   266: aload #10
    //   268: iconst_0
    //   269: iaload
    //   270: aload_0
    //   271: getfield mAnchorView : Landroid/view/View;
    //   274: invokevirtual getWidth : ()I
    //   277: iadd
    //   278: iastore
    //   279: aload #11
    //   281: iconst_0
    //   282: aload #11
    //   284: iconst_0
    //   285: iaload
    //   286: aload #6
    //   288: invokevirtual getWidth : ()I
    //   291: iadd
    //   292: iastore
    //   293: aload #11
    //   295: iconst_0
    //   296: iaload
    //   297: aload #10
    //   299: iconst_0
    //   300: iaload
    //   301: isub
    //   302: istore #9
    //   304: aload #11
    //   306: iconst_1
    //   307: iaload
    //   308: aload #10
    //   310: iconst_1
    //   311: iaload
    //   312: isub
    //   313: istore #7
    //   315: aload_0
    //   316: getfield mDropDownGravity : I
    //   319: iconst_5
    //   320: iand
    //   321: iconst_5
    //   322: if_icmpne -> 343
    //   325: iload #8
    //   327: ifeq -> 333
    //   330: goto -> 355
    //   333: aload #6
    //   335: invokevirtual getWidth : ()I
    //   338: istore #4
    //   340: goto -> 365
    //   343: iload #8
    //   345: ifeq -> 365
    //   348: aload #6
    //   350: invokevirtual getWidth : ()I
    //   353: istore #4
    //   355: iload #9
    //   357: iload #4
    //   359: iadd
    //   360: istore #4
    //   362: goto -> 372
    //   365: iload #9
    //   367: iload #4
    //   369: isub
    //   370: istore #4
    //   372: aload #5
    //   374: iload #4
    //   376: invokevirtual setHorizontalOffset : (I)V
    //   379: aload #5
    //   381: iconst_1
    //   382: invokevirtual setOverlapAnchor : (Z)V
    //   385: aload #5
    //   387: iload #7
    //   389: invokevirtual setVerticalOffset : (I)V
    //   392: goto -> 436
    //   395: aload_0
    //   396: getfield mHasXOffset : Z
    //   399: ifeq -> 411
    //   402: aload #5
    //   404: aload_0
    //   405: getfield mXOffset : I
    //   408: invokevirtual setHorizontalOffset : (I)V
    //   411: aload_0
    //   412: getfield mHasYOffset : Z
    //   415: ifeq -> 427
    //   418: aload #5
    //   420: aload_0
    //   421: getfield mYOffset : I
    //   424: invokevirtual setVerticalOffset : (I)V
    //   427: aload #5
    //   429: aload_0
    //   430: invokevirtual getEpicenterBounds : ()Landroid/graphics/Rect;
    //   433: invokevirtual setEpicenterBounds : (Landroid/graphics/Rect;)V
    //   436: new androidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo
    //   439: dup
    //   440: aload #5
    //   442: aload_1
    //   443: aload_0
    //   444: getfield mLastPosition : I
    //   447: invokespecial <init> : (Landroidx/appcompat/widget/MenuPopupWindow;Landroidx/appcompat/view/menu/MenuBuilder;I)V
    //   450: astore #6
    //   452: aload_0
    //   453: getfield mShowingMenus : Ljava/util/List;
    //   456: aload #6
    //   458: invokeinterface add : (Ljava/lang/Object;)Z
    //   463: pop
    //   464: aload #5
    //   466: invokevirtual show : ()V
    //   469: aload #5
    //   471: invokevirtual getListView : ()Landroid/widget/ListView;
    //   474: astore #6
    //   476: aload #6
    //   478: aload_0
    //   479: invokevirtual setOnKeyListener : (Landroid/view/View$OnKeyListener;)V
    //   482: aload_3
    //   483: ifnonnull -> 551
    //   486: aload_0
    //   487: getfield mShowTitle : Z
    //   490: ifeq -> 551
    //   493: aload_1
    //   494: invokevirtual getHeaderTitle : ()Ljava/lang/CharSequence;
    //   497: ifnull -> 551
    //   500: aload_2
    //   501: getstatic androidx/appcompat/R$layout.abc_popup_menu_header_item_layout : I
    //   504: aload #6
    //   506: iconst_0
    //   507: invokevirtual inflate : (ILandroid/view/ViewGroup;Z)Landroid/view/View;
    //   510: checkcast android/widget/FrameLayout
    //   513: astore_2
    //   514: aload_2
    //   515: ldc_w 16908310
    //   518: invokevirtual findViewById : (I)Landroid/view/View;
    //   521: checkcast android/widget/TextView
    //   524: astore_3
    //   525: aload_2
    //   526: iconst_0
    //   527: invokevirtual setEnabled : (Z)V
    //   530: aload_3
    //   531: aload_1
    //   532: invokevirtual getHeaderTitle : ()Ljava/lang/CharSequence;
    //   535: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   538: aload #6
    //   540: aload_2
    //   541: aconst_null
    //   542: iconst_0
    //   543: invokevirtual addHeaderView : (Landroid/view/View;Ljava/lang/Object;Z)V
    //   546: aload #5
    //   548: invokevirtual show : ()V
    //   551: return
  }
  
  public void addMenu(MenuBuilder paramMenuBuilder) {
    paramMenuBuilder.addMenuPresenter(this, this.mContext);
    if (isShowing()) {
      showMenu(paramMenuBuilder);
    } else {
      this.mPendingMenus.add(paramMenuBuilder);
    } 
  }
  
  protected boolean closeMenuOnSubMenuOpened() {
    return false;
  }
  
  public void dismiss() {
    int i = this.mShowingMenus.size();
    if (i > 0) {
      CascadingMenuInfo[] arrayOfCascadingMenuInfo = this.mShowingMenus.<CascadingMenuInfo>toArray(new CascadingMenuInfo[i]);
      while (--i >= 0) {
        CascadingMenuInfo cascadingMenuInfo = arrayOfCascadingMenuInfo[i];
        if (cascadingMenuInfo.window.isShowing())
          cascadingMenuInfo.window.dismiss(); 
        i--;
      } 
    } 
  }
  
  public boolean flagActionItems() {
    return false;
  }
  
  public ListView getListView() {
    ListView listView;
    if (this.mShowingMenus.isEmpty()) {
      listView = null;
    } else {
      List<CascadingMenuInfo> list = this.mShowingMenus;
      listView = ((CascadingMenuInfo)list.get(list.size() - 1)).getListView();
    } 
    return listView;
  }
  
  public boolean isShowing() {
    int i = this.mShowingMenus.size();
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (i > 0) {
      bool2 = bool1;
      if (((CascadingMenuInfo)this.mShowingMenus.get(0)).window.isShowing())
        bool2 = true; 
    } 
    return bool2;
  }
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean) {
    int i = findIndexOfAddedMenu(paramMenuBuilder);
    if (i < 0)
      return; 
    int j = i + 1;
    if (j < this.mShowingMenus.size())
      ((CascadingMenuInfo)this.mShowingMenus.get(j)).menu.close(false); 
    CascadingMenuInfo cascadingMenuInfo = this.mShowingMenus.remove(i);
    cascadingMenuInfo.menu.removeMenuPresenter(this);
    if (this.mShouldCloseImmediately) {
      cascadingMenuInfo.window.setExitTransition(null);
      cascadingMenuInfo.window.setAnimationStyle(0);
    } 
    cascadingMenuInfo.window.dismiss();
    i = this.mShowingMenus.size();
    if (i > 0) {
      this.mLastPosition = ((CascadingMenuInfo)this.mShowingMenus.get(i - 1)).position;
    } else {
      this.mLastPosition = getInitialMenuPosition();
    } 
    if (i == 0) {
      dismiss();
      MenuPresenter.Callback callback = this.mPresenterCallback;
      if (callback != null)
        callback.onCloseMenu(paramMenuBuilder, true); 
      ViewTreeObserver viewTreeObserver = this.mTreeObserver;
      if (viewTreeObserver != null) {
        if (viewTreeObserver.isAlive())
          this.mTreeObserver.removeGlobalOnLayoutListener(this.mGlobalLayoutListener); 
        this.mTreeObserver = null;
      } 
      this.mShownAnchorView.removeOnAttachStateChangeListener(this.mAttachStateChangeListener);
      this.mOnDismissListener.onDismiss();
    } else if (paramBoolean) {
      ((CascadingMenuInfo)this.mShowingMenus.get(0)).menu.close(false);
    } 
  }
  
  public void onDismiss() {
    // Byte code:
    //   0: aload_0
    //   1: getfield mShowingMenus : Ljava/util/List;
    //   4: invokeinterface size : ()I
    //   9: istore_1
    //   10: iconst_0
    //   11: istore_2
    //   12: iload_2
    //   13: iload_1
    //   14: if_icmpge -> 50
    //   17: aload_0
    //   18: getfield mShowingMenus : Ljava/util/List;
    //   21: iload_2
    //   22: invokeinterface get : (I)Ljava/lang/Object;
    //   27: checkcast androidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo
    //   30: astore_3
    //   31: aload_3
    //   32: getfield window : Landroidx/appcompat/widget/MenuPopupWindow;
    //   35: invokevirtual isShowing : ()Z
    //   38: ifne -> 44
    //   41: goto -> 52
    //   44: iinc #2, 1
    //   47: goto -> 12
    //   50: aconst_null
    //   51: astore_3
    //   52: aload_3
    //   53: ifnull -> 64
    //   56: aload_3
    //   57: getfield menu : Landroidx/appcompat/view/menu/MenuBuilder;
    //   60: iconst_0
    //   61: invokevirtual close : (Z)V
    //   64: return
  }
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent) {
    if (paramKeyEvent.getAction() == 1 && paramInt == 82) {
      dismiss();
      return true;
    } 
    return false;
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable) {}
  
  public Parcelable onSaveInstanceState() {
    return null;
  }
  
  public boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder) {
    for (CascadingMenuInfo cascadingMenuInfo : this.mShowingMenus) {
      if (paramSubMenuBuilder == cascadingMenuInfo.menu) {
        cascadingMenuInfo.getListView().requestFocus();
        return true;
      } 
    } 
    if (paramSubMenuBuilder.hasVisibleItems()) {
      addMenu(paramSubMenuBuilder);
      MenuPresenter.Callback callback = this.mPresenterCallback;
      if (callback != null)
        callback.onOpenSubMenu(paramSubMenuBuilder); 
      return true;
    } 
    return false;
  }
  
  public void setAnchorView(View paramView) {
    if (this.mAnchorView != paramView) {
      this.mAnchorView = paramView;
      this.mDropDownGravity = GravityCompat.getAbsoluteGravity(this.mRawDropDownGravity, ViewCompat.getLayoutDirection(this.mAnchorView));
    } 
  }
  
  public void setCallback(MenuPresenter.Callback paramCallback) {
    this.mPresenterCallback = paramCallback;
  }
  
  public void setForceShowIcon(boolean paramBoolean) {
    this.mForceShowIcon = paramBoolean;
  }
  
  public void setGravity(int paramInt) {
    if (this.mRawDropDownGravity != paramInt) {
      this.mRawDropDownGravity = paramInt;
      this.mDropDownGravity = GravityCompat.getAbsoluteGravity(paramInt, ViewCompat.getLayoutDirection(this.mAnchorView));
    } 
  }
  
  public void setHorizontalOffset(int paramInt) {
    this.mHasXOffset = true;
    this.mXOffset = paramInt;
  }
  
  public void setOnDismissListener(PopupWindow.OnDismissListener paramOnDismissListener) {
    this.mOnDismissListener = paramOnDismissListener;
  }
  
  public void setShowTitle(boolean paramBoolean) {
    this.mShowTitle = paramBoolean;
  }
  
  public void setVerticalOffset(int paramInt) {
    this.mHasYOffset = true;
    this.mYOffset = paramInt;
  }
  
  public void show() {
    if (isShowing())
      return; 
    Iterator<MenuBuilder> iterator = this.mPendingMenus.iterator();
    while (iterator.hasNext())
      showMenu(iterator.next()); 
    this.mPendingMenus.clear();
    this.mShownAnchorView = this.mAnchorView;
    if (this.mShownAnchorView != null) {
      boolean bool;
      if (this.mTreeObserver == null) {
        bool = true;
      } else {
        bool = false;
      } 
      this.mTreeObserver = this.mShownAnchorView.getViewTreeObserver();
      if (bool)
        this.mTreeObserver.addOnGlobalLayoutListener(this.mGlobalLayoutListener); 
      this.mShownAnchorView.addOnAttachStateChangeListener(this.mAttachStateChangeListener);
    } 
  }
  
  public void updateMenuView(boolean paramBoolean) {
    Iterator<CascadingMenuInfo> iterator = this.mShowingMenus.iterator();
    while (iterator.hasNext())
      toMenuAdapter(((CascadingMenuInfo)iterator.next()).getListView().getAdapter()).notifyDataSetChanged(); 
  }
  
  private static class CascadingMenuInfo {
    public final MenuBuilder menu;
    
    public final int position;
    
    public final MenuPopupWindow window;
    
    public CascadingMenuInfo(MenuPopupWindow param1MenuPopupWindow, MenuBuilder param1MenuBuilder, int param1Int) {
      this.window = param1MenuPopupWindow;
      this.menu = param1MenuBuilder;
      this.position = param1Int;
    }
    
    public ListView getListView() {
      return this.window.getListView();
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface HorizPosition {}
}


/* Location:              /home/austin/Documents/CTFFolder/CTF-Writeups/Razi-CTF2020/Android/chasing_a_lock/chasing a lock/classes-dex2jar.jar!/androidx/appcompat/view/menu/CascadingMenuPopup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */