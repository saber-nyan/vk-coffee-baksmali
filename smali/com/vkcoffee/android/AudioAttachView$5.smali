.class Lcom/vkcoffee/android/AudioAttachView$5;
.super Ljava/lang/Object;
.source "AudioAttachView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioAttachView;->onBufferProgressChanged(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioAttachView;

.field final synthetic val$buffered:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioAttachView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/AudioAttachView;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/vkcoffee/android/AudioAttachView$5;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    iput p2, p0, Lcom/vkcoffee/android/AudioAttachView$5;->val$buffered:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/vkcoffee/android/AudioAttachView$5;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioAttachView;->access$200(Lcom/vkcoffee/android/AudioAttachView;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/AudioAttachView$5;->val$buffered:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 342
    return-void
.end method
