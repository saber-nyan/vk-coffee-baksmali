.class Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine$1;
.super Ljava/lang/Object;
.source "MediaTranscoderEngine.java"

# interfaces
.implements Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->setupTrackTranscoders(Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;


# direct methods
.method constructor <init>(Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;)V
    .locals 0
    .param p1, "this$0"    # Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;

    .prologue
    .line 159
    iput-object p1, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine$1;->this$0:Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetermineOutputFormat()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine$1;->this$0:Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;

    invoke-static {v0}, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->access$000(Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;)Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    move-result-object v0

    invoke-interface {v0}, Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;->getDeterminedFormat()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Lnet/ypresto/androidtranscoder/engine/MediaFormatValidator;->validateVideoOutputFormat(Landroid/media/MediaFormat;)V

    .line 163
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine$1;->this$0:Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;

    invoke-static {v0}, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->access$100(Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;)Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;

    move-result-object v0

    invoke-interface {v0}, Lnet/ypresto/androidtranscoder/engine/TrackTranscoder;->getDeterminedFormat()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Lnet/ypresto/androidtranscoder/engine/MediaFormatValidator;->validateAudioOutputFormat(Landroid/media/MediaFormat;)V

    .line 164
    return-void
.end method
