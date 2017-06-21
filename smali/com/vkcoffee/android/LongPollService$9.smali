.class final Lcom/vkcoffee/android/LongPollService$9;
.super Ljava/lang/Object;
.source "LongPollService.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/LongPollService;->playNotificationSound(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "id"    # I
    .param p3, "status"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 1550
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->access$700()Landroid/media/SoundPool;

    move-result-object v0

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p2

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1551
    return-void
.end method
