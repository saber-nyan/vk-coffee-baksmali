.class Lcom/vkcoffee/android/AudioPlayerActivity$20$2$1;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity$20$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkcoffee/android/AudioPlayerActivity$20$2;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity$20$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$20$2$1;->this$2:Lcom/vkcoffee/android/AudioPlayerActivity$20$2;

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$20$2$1;->this$2:Lcom/vkcoffee/android/AudioPlayerActivity$20$2;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerActivity$20$2;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$20$2;)Lcom/vkcoffee/android/AudioPlayerActivity$20;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerActivity$20;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$20;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->forceUpdateCover()V

    .line 846
    return-void
.end method
