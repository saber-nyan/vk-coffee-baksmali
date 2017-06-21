.class public final enum Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;
.super Ljava/lang/Enum;
.source "QueuedMuxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ypresto/androidtranscoder/engine/QueuedMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SampleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

.field public static final enum AUDIO:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

.field public static final enum VIDEO:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    new-instance v0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

    const-string/jumbo v1, "VIDEO"

    invoke-direct {v0, v1, v2}, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;->VIDEO:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

    new-instance v0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

    const-string/jumbo v1, "AUDIO"

    invoke-direct {v0, v1, v3}, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;->AUDIO:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

    sget-object v1, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;->VIDEO:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

    aput-object v1, v0, v2

    sget-object v1, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;->AUDIO:Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

    aput-object v1, v0, v3

    sput-object v0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;->$VALUES:[Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 117
    const-class v0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

    return-object v0
.end method

.method public static values()[Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;->$VALUES:[Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

    invoke-virtual {v0}, [Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/ypresto/androidtranscoder/engine/QueuedMuxer$SampleType;

    return-object v0
.end method
