.class final synthetic Lcom/vk/attachpicker/widget/PagerVideoPlayer$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/widget/PagerVideoPlayer;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer$$Lambda$5;->arg$1:Lcom/vk/attachpicker/widget/PagerVideoPlayer;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/widget/PagerVideoPlayer$$Lambda$5;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/widget/PagerVideoPlayer$$Lambda$5;-><init>(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)V

    return-object v0
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer$$Lambda$5;->arg$1:Lcom/vk/attachpicker/widget/PagerVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->lambda$checkVideoView$48(Landroid/media/MediaPlayer;)V

    return-void
.end method
