.class Lcom/vkcoffee/android/ui/SlidingDrawer$SlidingHandler;
.super Landroid/os/Handler;
.source "SlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/SlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/SlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/SlidingDrawer;)V
    .locals 0

    .prologue
    .line 934
    iput-object p1, p0, Lcom/vkcoffee/android/ui/SlidingDrawer$SlidingHandler;->this$0:Lcom/vkcoffee/android/ui/SlidingDrawer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/ui/SlidingDrawer;Lcom/vkcoffee/android/ui/SlidingDrawer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/ui/SlidingDrawer;
    .param p2, "x1"    # Lcom/vkcoffee/android/ui/SlidingDrawer$1;

    .prologue
    .line 934
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/SlidingDrawer$SlidingHandler;-><init>(Lcom/vkcoffee/android/ui/SlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 936
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 941
    :goto_0
    return-void

    .line 938
    :pswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SlidingDrawer$SlidingHandler;->this$0:Lcom/vkcoffee/android/ui/SlidingDrawer;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/SlidingDrawer;->access$400(Lcom/vkcoffee/android/ui/SlidingDrawer;)V

    goto :goto_0

    .line 936
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
