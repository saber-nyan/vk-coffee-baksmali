.class Lcom/vkcoffee/android/AudioAttachView$4;
.super Ljava/lang/Object;
.source "AudioAttachView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioAttachView;->onPlayProgressChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioAttachView;

.field final synthetic val$played:I

.field final synthetic val$rawPos:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioAttachView;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/AudioAttachView;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/vkcoffee/android/AudioAttachView$4;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    iput p2, p0, Lcom/vkcoffee/android/AudioAttachView$4;->val$played:I

    iput p3, p0, Lcom/vkcoffee/android/AudioAttachView$4;->val$rawPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 324
    iget-object v1, p0, Lcom/vkcoffee/android/AudioAttachView$4;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioAttachView;->access$000(Lcom/vkcoffee/android/AudioAttachView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/vkcoffee/android/AudioAttachView$4;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioAttachView;->access$200(Lcom/vkcoffee/android/AudioAttachView;)Landroid/widget/SeekBar;

    move-result-object v1

    iget v2, p0, Lcom/vkcoffee/android/AudioAttachView$4;->val$played:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/AudioAttachView$4;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    iget v1, v1, Lcom/vkcoffee/android/AudioAttachView;->duration:I

    iget v2, p0, Lcom/vkcoffee/android/AudioAttachView$4;->val$rawPos:I

    div-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v1, v2

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 328
    .local v0, "left":I
    iget-object v1, p0, Lcom/vkcoffee/android/AudioAttachView$4;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioAttachView;->access$600(Lcom/vkcoffee/android/AudioAttachView;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, "-%d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    div-int/lit8 v4, v0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    rem-int/lit8 v5, v0, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    return-void
.end method
