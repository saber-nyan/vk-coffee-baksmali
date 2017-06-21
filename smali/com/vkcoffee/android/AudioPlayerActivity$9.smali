.class Lcom/vkcoffee/android/AudioPlayerActivity$9;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$9;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 307
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$9;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$6(Lcom/vkcoffee/android/AudioPlayerActivity;)V

    .line 310
    :cond_0
    return-void
.end method
