.class public Lcom/vkcoffee/android/ui/InverseAbsListViewDelegate;
.super Ljava/lang/Object;
.source "InverseAbsListViewDelegate.java"

# interfaces
.implements Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/InverseAbsListViewDelegate$CompatV11;,
        Lcom/vkcoffee/android/ui/InverseAbsListViewDelegate$Compat;
    }
.end annotation


# static fields
.field public static final SUPPORTED_VIEW_CLASSES:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/widget/AbsListView;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vkcoffee/android/ui/InverseAbsListViewDelegate;->SUPPORTED_VIEW_CLASSES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method


# virtual methods
.method getVerticalScrollbarPosition(Landroid/widget/AbsListView;)I
    .locals 2
    .param p1, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 64
    invoke-static {p1}, Lcom/vkcoffee/android/ui/InverseAbsListViewDelegate$CompatV11;->getVerticalScrollbarPosition(Landroid/widget/AbsListView;)I

    move-result v0

    .line 65
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/vkcoffee/android/ui/InverseAbsListViewDelegate$Compat;->getVerticalScrollbarPosition(Landroid/widget/AbsListView;)I

    move-result v0

    goto :goto_0
.end method

.method isFastScrollAlwaysVisible(Landroid/widget/AbsListView;)Z
    .locals 2
    .param p1, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 70
    invoke-static {p1}, Lcom/vkcoffee/android/ui/InverseAbsListViewDelegate$CompatV11;->isFastScrollAlwaysVisible(Landroid/widget/AbsListView;)Z

    move-result v0

    .line 71
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/vkcoffee/android/ui/InverseAbsListViewDelegate$Compat;->isFastScrollAlwaysVisible(Landroid/widget/AbsListView;)Z

    move-result v0

    goto :goto_0
.end method

.method public isReadyForPull(Landroid/view/View;FF)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 35
    const/4 v2, 0x0

    .local v2, "ready":Z
    move-object v0, p1

    .line 38
    check-cast v0, Landroid/widget/AbsListView;

    .line 39
    .local v0, "absListView":Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 40
    const/4 v2, 0x1

    .line 48
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/InverseAbsListViewDelegate;->isFastScrollAlwaysVisible(Landroid/widget/AbsListView;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 49
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/InverseAbsListViewDelegate;->getVerticalScrollbarPosition(Landroid/widget/AbsListView;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 59
    :cond_1
    :goto_1
    return v2

    .line 41
    :cond_2
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_0

    .line 42
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 43
    .local v1, "firstVisibleChild":Landroid/view/View;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    if-gt v5, v6, :cond_3

    move v2, v3

    :goto_2
    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_2

    .line 51
    .end local v1    # "firstVisibleChild":Landroid/view/View;
    :pswitch_0
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getVerticalScrollbarWidth()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gez v5, :cond_4

    move v2, v3

    .line 52
    :goto_3
    goto :goto_1

    :cond_4
    move v2, v4

    .line 51
    goto :goto_3

    .line 54
    :pswitch_1
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getVerticalScrollbarWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-lez v5, :cond_5

    move v2, v3

    :goto_4
    goto :goto_1

    :cond_5
    move v2, v4

    goto :goto_4

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
