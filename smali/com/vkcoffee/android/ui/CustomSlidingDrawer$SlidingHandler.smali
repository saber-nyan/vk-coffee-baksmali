.class Lcom/vkcoffee/android/ui/CustomSlidingDrawer$SlidingHandler;
.super Landroid/os/Handler;
.source "CustomSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/CustomSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/CustomSlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/CustomSlidingDrawer;)V
    .locals 0

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/vkcoffee/android/ui/CustomSlidingDrawer$SlidingHandler;->this$0:Lcom/vkcoffee/android/ui/CustomSlidingDrawer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/ui/CustomSlidingDrawer;Lcom/vkcoffee/android/ui/CustomSlidingDrawer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/ui/CustomSlidingDrawer;
    .param p2, "x1"    # Lcom/vkcoffee/android/ui/CustomSlidingDrawer$1;

    .prologue
    .line 1030
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/CustomSlidingDrawer$SlidingHandler;-><init>(Lcom/vkcoffee/android/ui/CustomSlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 1032
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1037
    :goto_0
    return-void

    .line 1034
    :pswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CustomSlidingDrawer$SlidingHandler;->this$0:Lcom/vkcoffee/android/ui/CustomSlidingDrawer;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/CustomSlidingDrawer;->access$300(Lcom/vkcoffee/android/ui/CustomSlidingDrawer;)V

    goto :goto_0

    .line 1032
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
