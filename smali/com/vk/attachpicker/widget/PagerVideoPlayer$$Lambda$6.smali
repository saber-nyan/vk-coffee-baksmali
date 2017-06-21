.class final synthetic Lcom/vk/attachpicker/widget/PagerVideoPlayer$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/widget/PagerVideoPlayer;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer$$Lambda$6;->arg$1:Lcom/vk/attachpicker/widget/PagerVideoPlayer;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/widget/PagerVideoPlayer$$Lambda$6;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/widget/PagerVideoPlayer$$Lambda$6;-><init>(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)V

    return-object v0
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer$$Lambda$6;->arg$1:Lcom/vk/attachpicker/widget/PagerVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->lambda$checkVideoView$49(Landroid/media/MediaPlayer;)V

    return-void
.end method
