.class Lcom/vkcoffee/android/ui/InverseAbsListViewDelegate$CompatV11;
.super Ljava/lang/Object;
.source "InverseAbsListViewDelegate.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/InverseAbsListViewDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompatV11"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getVerticalScrollbarPosition(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v0

    return v0
.end method

.method static isFastScrollAlwaysVisible(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollAlwaysVisible()Z

    move-result v0

    return v0
.end method
