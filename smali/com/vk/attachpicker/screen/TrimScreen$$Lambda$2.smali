.class final synthetic Lcom/vk/attachpicker/screen/TrimScreen$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/screen/TrimScreen;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/screen/TrimScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/screen/TrimScreen$$Lambda$2;->arg$1:Lcom/vk/attachpicker/screen/TrimScreen;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/screen/TrimScreen;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/screen/TrimScreen$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/screen/TrimScreen$$Lambda$2;-><init>(Lcom/vk/attachpicker/screen/TrimScreen;)V

    return-object v0
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/vk/attachpicker/screen/TrimScreen$$Lambda$2;->arg$1:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/screen/TrimScreen;->lambda$createView$154(Landroid/media/MediaPlayer;)V

    return-void
.end method
