.class Lcom/vkcoffee/android/ui/widget/SubPagerOfList$1;
.super Ljava/lang/Object;
.source "SubPagerOfList.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/widget/SubPagerOfList;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/widget/SubPagerOfList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/widget/SubPagerOfList;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$1;->this$0:Lcom/vkcoffee/android/ui/widget/SubPagerOfList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 66
    packed-switch p1, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$1;->this$0:Lcom/vkcoffee/android/ui/widget/SubPagerOfList;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->access$000(Lcom/vkcoffee/android/ui/widget/SubPagerOfList;)V

    goto :goto_0

    .line 72
    :pswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$1;->this$0:Lcom/vkcoffee/android/ui/widget/SubPagerOfList;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->access$100(Lcom/vkcoffee/android/ui/widget/SubPagerOfList;)V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 58
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 62
    return-void
.end method
