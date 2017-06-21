.class Lcom/vkcoffee/android/AudioPlayerService$AudioPlaySender;
.super Ljava/lang/Object;
.source "AudioPlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/AudioPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioPlaySender"
.end annotation


# instance fields
.field final f:Lcom/vkcoffee/android/AudioFile;

.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerService;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/AudioPlayerService;Lcom/vkcoffee/android/AudioFile;)V
    .locals 0
    .param p2, "f"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    .line 1894
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerService$AudioPlaySender;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1895
    iput-object p2, p0, Lcom/vkcoffee/android/AudioPlayerService$AudioPlaySender;->f:Lcom/vkcoffee/android/AudioFile;

    .line 1896
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1901
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService$AudioPlaySender;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerService;->access$800(Lcom/vkcoffee/android/AudioPlayerService;)Lcom/vkcoffee/android/AudioFile;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService$AudioPlaySender;->f:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService$AudioPlaySender;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkcoffee/android/AudioPlayerService;->access$800(Lcom/vkcoffee/android/AudioPlayerService;)Lcom/vkcoffee/android/AudioFile;

    move-result-object v2

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->oid:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService$AudioPlaySender;->f:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->aid:I

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService$AudioPlaySender;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkcoffee/android/AudioPlayerService;->access$800(Lcom/vkcoffee/android/AudioPlayerService;)Lcom/vkcoffee/android/AudioFile;

    move-result-object v2

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->aid:I

    if-eq v1, v2, :cond_1

    .line 1912
    :cond_0
    :goto_0
    return-void

    .line 1904
    :cond_1
    const-string/jumbo v1, "audio_play"

    invoke-static {v1}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    const-string/jumbo v2, "audio_id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService$AudioPlaySender;->f:Lcom/vkcoffee/android/AudioFile;

    iget v4, v4, Lcom/vkcoffee/android/AudioFile;->oid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService$AudioPlaySender;->f:Lcom/vkcoffee/android/AudioFile;

    iget v4, v4, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1905
    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    const-string/jumbo v2, "source"

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService$AudioPlaySender;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    .line 1906
    invoke-static {v3}, Lcom/vkcoffee/android/AudioPlayerService;->access$400(Lcom/vkcoffee/android/AudioPlayerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    const-string/jumbo v2, "uuid"

    .line 1907
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    .line 1908
    invoke-virtual {v1}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->sendNow()Lcom/vkcoffee/android/data/Analytics$EventBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1909
    :catch_0
    move-exception v0

    .line 1910
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method
