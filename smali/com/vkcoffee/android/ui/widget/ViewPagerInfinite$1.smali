.class Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite$1;
.super Ljava/lang/Object;
.source "ViewPagerInfinite.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite$1;->this$0:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite$1;->this$0:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->access$002(Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite$1;->this$0:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->access$100(Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite$1;->this$0:Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;->access$200(Lcom/vkcoffee/android/ui/widget/ViewPagerInfinite;)V

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 37
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 41
    return-void
.end method
