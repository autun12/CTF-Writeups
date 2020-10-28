.class public Lb/c/a/a/l/f$b;
.super La/h/j/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/c/a/a/l/f;->B(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lb/c/a/a/l/f;)V
    .locals 0

    invoke-direct {p0}, La/h/j/a;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;La/h/j/x/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, La/h/j/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 2
    iget-object v1, p2, La/h/j/x/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p2, p1}, La/h/j/x/b;->i(Ljava/lang/Object;)V

    return-void
.end method
