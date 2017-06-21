.class public Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/AbsListViewDelegate;
.super Ljava/lang/Object;
.source "AbsListViewDelegate.java"

# interfaces
.implements Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/AbsListViewDelegate$CompatV11;,
        Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/AbsListViewDelegate$Compat;
    }
.end annotation


# static fields
.field public static final SUPPORTED_VIEW_CLASSES:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/widget/AbsListView;

    aput-object v2, v0, v1

    sput-object v0, Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/AbsListViewDelegate;->SUPPORTED_VIEW_CLASSES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method


# virtual methods
.method getVerticalScrollbarPosition(Landroid/widget/AbsListView;)I
    .locals 2
    .param p1, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 62
    invoke-static {p1}, Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/AbsListViewDelegate$CompatV11;->getVerticalScrollbarPosition(Landroid/widget/AbsListView;)I

    move-result v0

    .line 63
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/AbsListViewDelegate$Compat;->getVerticalScrollbarPosition(Landroid/widget/AbsListView;)I

    move-result v0

    goto :goto_0
.end method

.method isFastScrollAlwaysVisible(Landroid/widget/AbsListView;)Z
    .locals 2
    .param p1, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 68
    invoke-static {p1}, Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/AbsListViewDelegate$CompatV11;->isFastScrollAlwaysVisible(Landroid/widget/AbsListView;)Z

    move-result v0

    .line 69
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/AbsListViewDelegate$Compat;->isFastScrollAlwaysVisible(Landroid/widget/AbsListView;)Z

    move-result v0

    goto :goto_0
.end method

.method public isReadyForPull(Landroid/view/View;FF)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 33
    const/4 v2, 0x0

    .local v2, "ready":Z
    move-object v0, p1

    .line 36
    check-cast v0, Landroid/widget/AbsListView;

    .line 37
    .local v0, "absListView":Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 38
    const/4 v2, 0x1

    .line 46
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 47
    invoke-virtual {p0, v0}, Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/AbsListViewDelegate;->getVerticalScrollbarPosition(Landroid/widget/AbsListView;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 57
    :cond_1
    :goto_1
    return v2

    .line 39
    :cond_2
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v5

    if-nez v5, :cond_0

    .line 40
    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 41
    .local v1, "firstVisibleChild":Landroid/view/View;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v6

    if-lt v5, v6, :cond_3

    move v2, v3

    :goto_2
    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_2

    .line 49
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

    .line 50
    :goto_3
    goto :goto_1

    :cond_4
    move v2, v4

    .line 49
    goto :goto_3

    .line 52
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

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
