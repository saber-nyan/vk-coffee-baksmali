.class Lcom/vkcoffee/android/ui/SearchViewWrapper$1;
.super Landroid/widget/FrameLayout;
.source "SearchViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/SearchViewWrapper;-><init>(Landroid/app/Activity;Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/SearchViewWrapper;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/SearchViewWrapper;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$1;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 93
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    or-int/2addr v0, v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    or-int/2addr v1, v2

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 94
    return-void
.end method
