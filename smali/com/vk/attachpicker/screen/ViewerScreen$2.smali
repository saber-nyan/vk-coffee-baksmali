.class Lcom/vk/attachpicker/screen/ViewerScreen$2;
.super Ljava/lang/Object;
.source "ViewerScreen.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/ViewerScreen;->createView(Landroid/view/LayoutInflater;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/screen/ViewerScreen;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/ViewerScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/screen/ViewerScreen;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$2;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onPageSelected$33(I)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$2;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-static {v0, p1}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$300(Lcom/vk/attachpicker/screen/ViewerScreen;I)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 207
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i2"    # I

    .prologue
    .line 195
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 199
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/events/NotificationCenter;->fireEvent(I)V

    .line 200
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/events/NotificationCenter;->fireEvent(I)V

    .line 201
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$2;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$000(Lcom/vk/attachpicker/screen/ViewerScreen;)Lcom/vk/attachpicker/widget/ViewerToolbar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/widget/ViewerToolbar;->setCurrentPagerPosition(I)V

    .line 202
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$2;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$100(Lcom/vk/attachpicker/screen/ViewerScreen;IZ)V

    .line 203
    invoke-static {}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$200()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/vk/attachpicker/screen/ViewerScreen$2$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/screen/ViewerScreen$2;I)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    return-void
.end method
