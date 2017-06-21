.class Lcom/vkcoffee/android/AudioAttachView$2;
.super Ljava/lang/Object;
.source "AudioAttachView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioAttachView;->setPlaying(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioAttachView;

.field final synthetic val$p:Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioAttachView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/AudioAttachView;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/vkcoffee/android/AudioAttachView$2;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    iput-boolean p2, p0, Lcom/vkcoffee/android/AudioAttachView$2;->val$p:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView$2;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    iget-boolean v1, p0, Lcom/vkcoffee/android/AudioAttachView$2;->val$p:Z

    iput-boolean v1, v0, Lcom/vkcoffee/android/AudioAttachView;->isPlaying:Z

    .line 277
    iget-object v1, p0, Lcom/vkcoffee/android/AudioAttachView$2;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView$2;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    iget-boolean v0, v0, Lcom/vkcoffee/android/AudioAttachView;->isPlaying:Z

    if-eqz v0, :cond_0

    const v0, 0x7f020126

    :goto_0
    invoke-static {v1, v0}, Lcom/vkcoffee/android/AudioAttachView;->access$100(Lcom/vkcoffee/android/AudioAttachView;I)V

    .line 279
    return-void

    .line 277
    :cond_0
    const v0, 0x7f020127

    goto :goto_0
.end method
