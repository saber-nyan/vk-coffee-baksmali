.class Lcom/vkcoffee/android/LongPollService$10;
.super Ljava/util/TimerTask;
.source "LongPollService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/LongPollService;->startSendingOnline()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/LongPollService;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/LongPollService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/LongPollService;

    .prologue
    .line 1715
    iput-object p1, p0, Lcom/vkcoffee/android/LongPollService$10;->this$0:Lcom/vkcoffee/android/LongPollService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/vkcoffee/android/LongPollService$10;->this$0:Lcom/vkcoffee/android/LongPollService;

    invoke-static {v0}, Lcom/vkcoffee/android/LongPollService;->access$800(Lcom/vkcoffee/android/LongPollService;)V

    .line 1719
    return-void
.end method
