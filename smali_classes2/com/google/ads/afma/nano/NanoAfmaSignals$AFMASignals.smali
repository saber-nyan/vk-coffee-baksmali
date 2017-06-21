.class public final Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;
.super Lcom/google/android/gms/internal/zzsu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/afma/nano/NanoAfmaSignals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AFMASignals"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;,
        Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$DeviceIdType;
    }
.end annotation


# static fields
.field private static volatile zzaL:[Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;


# instance fields
.field public actSignal:Ljava/lang/Long;

.field public acxSignal:Ljava/lang/Long;

.field public acySignal:Ljava/lang/Long;

.field public aczSignal:Ljava/lang/Long;

.field public adAttestationSignal:Lcom/google/ads/afma/nano/NanoAfmaSignals$AdAttestationSignal;

.field public afmaVersion:Ljava/lang/String;

.field public attSignal:Ljava/lang/Long;

.field public atvSignal:Ljava/lang/Long;

.field public btlSignal:Ljava/lang/Long;

.field public btsSignal:Ljava/lang/Long;

.field public cerSignal:Ljava/lang/String;

.field public didOptOut:Ljava/lang/Boolean;

.field public didSignal:Ljava/lang/String;

.field public didSignalAndroidAdId:Ljava/lang/String;

.field public didSignalType:Ljava/lang/Integer;

.field public evtTime:Ljava/lang/Long;

.field public intSignal:Ljava/lang/String;

.field public jbkSignal:Ljava/lang/Long;

.field public netSignal:Ljava/lang/Long;

.field public ornSignal:Ljava/lang/Long;

.field public osVersion:Ljava/lang/String;

.field public previousTouches:[Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;

.field public psnSignal:Ljava/lang/Long;

.field public rawAdAttestationSignal:Lcom/google/ads/afma/nano/NanoAfmaSignals$RawAdAttestationSignal;

.field public reqType:Ljava/lang/Long;

.field public stkSignal:Ljava/lang/String;

.field public swzSignal:Ljava/lang/Long;

.field public tccSignal:Ljava/lang/Long;

.field public tcdSignal:Ljava/lang/Long;

.field public tcdnSignal:Ljava/lang/Long;

.field public tcmSignal:Ljava/lang/Long;

.field public tcpSignal:Ljava/lang/Long;

.field public tctSignal:Ljava/lang/Long;

.field public tcuSignal:Ljava/lang/Long;

.field public tcxSignal:Ljava/lang/Long;

.field public tcySignal:Ljava/lang/Long;

.field public uhSignal:Ljava/lang/Long;

.field public uptSignal:Ljava/lang/Long;

.field public usgSignal:Ljava/lang/Long;

.field public utzSignal:Ljava/lang/Long;

.field public uwSignal:Ljava/lang/Long;

.field public vcdSignal:Ljava/lang/Long;

.field public visSignal:Ljava/lang/Long;

.field public vnmSignal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsu;-><init>()V

    invoke-virtual {p0}, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->clear()Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;

    return-void
.end method

.method public static emptyArray()[Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;
    .locals 2

    sget-object v0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->zzaL:[Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzss;->zzbut:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->zzaL:[Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;

    sput-object v0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->zzaL:[Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->zzaL:[Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/android/gms/internal/zzsm;)Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;
    .locals 1
    .param p0, "input"    # Lcom/google/android/gms/internal/zzsm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;

    invoke-direct {v0}, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->mergeFrom(Lcom/google/android/gms/internal/zzsm;)Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzst;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;

    invoke-direct {v0}, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzsu;->mergeFrom(Lcom/google/android/gms/internal/zzsu;[B)Lcom/google/android/gms/internal/zzsu;

    move-result-object v0

    check-cast v0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->osVersion:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->afmaVersion:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->atvSignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->attSignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->btsSignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->btlSignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->acxSignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->acySignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->aczSignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->actSignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->netSignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->ornSignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->stkSignal:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcxSignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcySignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tctSignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->uptSignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->visSignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->swzSignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->psnSignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->jbkSignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->usgSignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->intSignal:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->cerSignal:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->uwSignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->uhSignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->utzSignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->vnmSignal:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->vcdSignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcpSignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcdSignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->adAttestationSignal:Lcom/google/ads/afma/nano/NanoAfmaSignals$AdAttestationSignal;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcuSignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcmSignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcdnSignal:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tccSignal:Ljava/lang/Long;

    invoke-static {}, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;->emptyArray()[Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->previousTouches:[Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->reqType:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->didSignal:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->didSignalType:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->didOptOut:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->didSignalAndroidAdId:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->evtTime:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->rawAdAttestationSignal:Lcom/google/ads/afma/nano/NanoAfmaSignals$RawAdAttestationSignal;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->zzbuu:I

    return-object p0
.end method

.method public mergeFrom(Lcom/google/android/gms/internal/zzsm;)Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;
    .locals 4
    .param p1, "input"    # Lcom/google/android/gms/internal/zzsm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsx;->zzb(Lcom/google/android/gms/internal/zzsm;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->osVersion:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->afmaVersion:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->atvSignal:Ljava/lang/Long;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->attSignal:Ljava/lang/Long;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->btsSignal:Ljava/lang/Long;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->btlSignal:Ljava/lang/Long;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->acxSignal:Ljava/lang/Long;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->acySignal:Ljava/lang/Long;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->aczSignal:Ljava/lang/Long;

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->actSignal:Ljava/lang/Long;

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->netSignal:Ljava/lang/Long;

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->ornSignal:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->stkSignal:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcxSignal:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcySignal:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tctSignal:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->uptSignal:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->visSignal:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->swzSignal:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->psnSignal:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->reqType:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->jbkSignal:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->usgSignal:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->didSignal:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->evtTime:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJb()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->didSignalType:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->intSignal:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJc()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->didOptOut:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->cerSignal:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->didSignalAndroidAdId:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->uwSignal:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->uhSignal:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->utzSignal:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->vnmSignal:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->vcdSignal:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcpSignal:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcdSignal:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_26
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->adAttestationSignal:Lcom/google/ads/afma/nano/NanoAfmaSignals$AdAttestationSignal;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AdAttestationSignal;

    invoke-direct {v0}, Lcom/google/ads/afma/nano/NanoAfmaSignals$AdAttestationSignal;-><init>()V

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->adAttestationSignal:Lcom/google/ads/afma/nano/NanoAfmaSignals$AdAttestationSignal;

    :cond_1
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->adAttestationSignal:Lcom/google/ads/afma/nano/NanoAfmaSignals$AdAttestationSignal;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsm;->zza(Lcom/google/android/gms/internal/zzsu;)V

    goto/16 :goto_0

    :sswitch_27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcuSignal:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcmSignal:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcdnSignal:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzJa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tccSignal:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_2b
    const/16 v0, 0x15a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsx;->zzc(Lcom/google/android/gms/internal/zzsm;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->previousTouches:[Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->previousTouches:[Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    new-instance v3, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;

    invoke-direct {v3}, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzsm;->zza(Lcom/google/android/gms/internal/zzsu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->previousTouches:[Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;

    array-length v0, v0

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;

    invoke-direct {v3}, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsm;->zza(Lcom/google/android/gms/internal/zzsu;)V

    iput-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->previousTouches:[Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;

    goto/16 :goto_0

    :sswitch_2c
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->rawAdAttestationSignal:Lcom/google/ads/afma/nano/NanoAfmaSignals$RawAdAttestationSignal;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/ads/afma/nano/NanoAfmaSignals$RawAdAttestationSignal;

    invoke-direct {v0}, Lcom/google/ads/afma/nano/NanoAfmaSignals$RawAdAttestationSignal;-><init>()V

    iput-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->rawAdAttestationSignal:Lcom/google/ads/afma/nano/NanoAfmaSignals$RawAdAttestationSignal;

    :cond_5
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->rawAdAttestationSignal:Lcom/google/ads/afma/nano/NanoAfmaSignals$RawAdAttestationSignal;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsm;->zza(Lcom/google/android/gms/internal/zzsu;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x80 -> :sswitch_10
        0x88 -> :sswitch_11
        0x90 -> :sswitch_12
        0x98 -> :sswitch_13
        0xa0 -> :sswitch_14
        0xa8 -> :sswitch_15
        0xb0 -> :sswitch_16
        0xb8 -> :sswitch_17
        0xc2 -> :sswitch_18
        0xc8 -> :sswitch_19
        0xd0 -> :sswitch_1a
        0xda -> :sswitch_1b
        0xe0 -> :sswitch_1c
        0xea -> :sswitch_1d
        0xf2 -> :sswitch_1e
        0xf8 -> :sswitch_1f
        0x100 -> :sswitch_20
        0x108 -> :sswitch_21
        0x112 -> :sswitch_22
        0x118 -> :sswitch_23
        0x120 -> :sswitch_24
        0x128 -> :sswitch_25
        0x132 -> :sswitch_26
        0x138 -> :sswitch_27
        0x140 -> :sswitch_28
        0x148 -> :sswitch_29
        0x150 -> :sswitch_2a
        0x15a -> :sswitch_2b
        0x64a -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/android/gms/internal/zzsm;)Lcom/google/android/gms/internal/zzsu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->mergeFrom(Lcom/google/android/gms/internal/zzsm;)Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/android/gms/internal/zzsn;)V
    .locals 4
    .param p1, "output"    # Lcom/google/android/gms/internal/zzsn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->osVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->osVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzsn;->zzn(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->afmaVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->afmaVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzsn;->zzn(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->atvSignal:Ljava/lang/Long;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->atvSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_2
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->attSignal:Ljava/lang/Long;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->attSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_3
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->btsSignal:Ljava/lang/Long;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->btsSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_4
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->btlSignal:Ljava/lang/Long;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->btlSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_5
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->acxSignal:Ljava/lang/Long;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->acxSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_6
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->acySignal:Ljava/lang/Long;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->acySignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_7
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->aczSignal:Ljava/lang/Long;

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->aczSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_8
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->actSignal:Ljava/lang/Long;

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->actSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_9
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->netSignal:Ljava/lang/Long;

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->netSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_a
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->ornSignal:Ljava/lang/Long;

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->ornSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_b
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->stkSignal:Ljava/lang/String;

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->stkSignal:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzsn;->zzn(ILjava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcxSignal:Ljava/lang/Long;

    if-eqz v0, :cond_d

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcxSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_d
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcySignal:Ljava/lang/Long;

    if-eqz v0, :cond_e

    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcySignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_e
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tctSignal:Ljava/lang/Long;

    if-eqz v0, :cond_f

    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tctSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_f
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->uptSignal:Ljava/lang/Long;

    if-eqz v0, :cond_10

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->uptSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_10
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->visSignal:Ljava/lang/Long;

    if-eqz v0, :cond_11

    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->visSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_11
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->swzSignal:Ljava/lang/Long;

    if-eqz v0, :cond_12

    const/16 v0, 0x13

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->swzSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_12
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->psnSignal:Ljava/lang/Long;

    if-eqz v0, :cond_13

    const/16 v0, 0x14

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->psnSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_13
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->reqType:Ljava/lang/Long;

    if-eqz v0, :cond_14

    const/16 v0, 0x15

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->reqType:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_14
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->jbkSignal:Ljava/lang/Long;

    if-eqz v0, :cond_15

    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->jbkSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_15
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->usgSignal:Ljava/lang/Long;

    if-eqz v0, :cond_16

    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->usgSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_16
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->didSignal:Ljava/lang/String;

    if-eqz v0, :cond_17

    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->didSignal:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzsn;->zzn(ILjava/lang/String;)V

    :cond_17
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->evtTime:Ljava/lang/Long;

    if-eqz v0, :cond_18

    const/16 v0, 0x19

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->evtTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_18
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->didSignalType:Ljava/lang/Integer;

    if-eqz v0, :cond_19

    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->didSignalType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzsn;->zzA(II)V

    :cond_19
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->intSignal:Ljava/lang/String;

    if-eqz v0, :cond_1a

    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->intSignal:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzsn;->zzn(ILjava/lang/String;)V

    :cond_1a
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->didOptOut:Ljava/lang/Boolean;

    if-eqz v0, :cond_1b

    const/16 v0, 0x1c

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->didOptOut:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzsn;->zze(IZ)V

    :cond_1b
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->cerSignal:Ljava/lang/String;

    if-eqz v0, :cond_1c

    const/16 v0, 0x1d

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->cerSignal:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzsn;->zzn(ILjava/lang/String;)V

    :cond_1c
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->didSignalAndroidAdId:Ljava/lang/String;

    if-eqz v0, :cond_1d

    const/16 v0, 0x1e

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->didSignalAndroidAdId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzsn;->zzn(ILjava/lang/String;)V

    :cond_1d
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->uwSignal:Ljava/lang/Long;

    if-eqz v0, :cond_1e

    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->uwSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_1e
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->uhSignal:Ljava/lang/Long;

    if-eqz v0, :cond_1f

    const/16 v0, 0x20

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->uhSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_1f
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->utzSignal:Ljava/lang/Long;

    if-eqz v0, :cond_20

    const/16 v0, 0x21

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->utzSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_20
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->vnmSignal:Ljava/lang/String;

    if-eqz v0, :cond_21

    const/16 v0, 0x22

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->vnmSignal:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzsn;->zzn(ILjava/lang/String;)V

    :cond_21
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->vcdSignal:Ljava/lang/Long;

    if-eqz v0, :cond_22

    const/16 v0, 0x23

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->vcdSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_22
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcpSignal:Ljava/lang/Long;

    if-eqz v0, :cond_23

    const/16 v0, 0x24

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcpSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_23
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcdSignal:Ljava/lang/Long;

    if-eqz v0, :cond_24

    const/16 v0, 0x25

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcdSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_24
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->adAttestationSignal:Lcom/google/ads/afma/nano/NanoAfmaSignals$AdAttestationSignal;

    if-eqz v0, :cond_25

    const/16 v0, 0x26

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->adAttestationSignal:Lcom/google/ads/afma/nano/NanoAfmaSignals$AdAttestationSignal;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzsn;->zza(ILcom/google/android/gms/internal/zzsu;)V

    :cond_25
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcuSignal:Ljava/lang/Long;

    if-eqz v0, :cond_26

    const/16 v0, 0x27

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcuSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_26
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcmSignal:Ljava/lang/Long;

    if-eqz v0, :cond_27

    const/16 v0, 0x28

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcmSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_27
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcdnSignal:Ljava/lang/Long;

    if-eqz v0, :cond_28

    const/16 v0, 0x29

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcdnSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_28
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tccSignal:Ljava/lang/Long;

    if-eqz v0, :cond_29

    const/16 v0, 0x2a

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tccSignal:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzb(IJ)V

    :cond_29
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->previousTouches:[Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->previousTouches:[Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;

    array-length v0, v0

    if-lez v0, :cond_2b

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->previousTouches:[Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_2b

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->previousTouches:[Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2a

    const/16 v2, 0x2b

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzsn;->zza(ILcom/google/android/gms/internal/zzsu;)V

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2b
    iget-object v0, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->rawAdAttestationSignal:Lcom/google/ads/afma/nano/NanoAfmaSignals$RawAdAttestationSignal;

    if-eqz v0, :cond_2c

    const/16 v0, 0xc9

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->rawAdAttestationSignal:Lcom/google/ads/afma/nano/NanoAfmaSignals$RawAdAttestationSignal;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzsn;->zza(ILcom/google/android/gms/internal/zzsu;)V

    :cond_2c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzsu;->writeTo(Lcom/google/android/gms/internal/zzsn;)V

    return-void
.end method

.method protected zzz()I
    .locals 5

    invoke-super {p0}, Lcom/google/android/gms/internal/zzsu;->zzz()I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->osVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->osVersion:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzsn;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->afmaVersion:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->afmaVersion:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzsn;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->atvSignal:Ljava/lang/Long;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->atvSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->attSignal:Ljava/lang/Long;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->attSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->btsSignal:Ljava/lang/Long;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->btsSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->btlSignal:Ljava/lang/Long;

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->btlSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->acxSignal:Ljava/lang/Long;

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->acxSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->acySignal:Ljava/lang/Long;

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->acySignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->aczSignal:Ljava/lang/Long;

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->aczSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->actSignal:Ljava/lang/Long;

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->actSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->netSignal:Ljava/lang/Long;

    if-eqz v1, :cond_a

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->netSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->ornSignal:Ljava/lang/Long;

    if-eqz v1, :cond_b

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->ornSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->stkSignal:Ljava/lang/String;

    if-eqz v1, :cond_c

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->stkSignal:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzsn;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcxSignal:Ljava/lang/Long;

    if-eqz v1, :cond_d

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcxSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcySignal:Ljava/lang/Long;

    if-eqz v1, :cond_e

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcySignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tctSignal:Ljava/lang/Long;

    if-eqz v1, :cond_f

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tctSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->uptSignal:Ljava/lang/Long;

    if-eqz v1, :cond_10

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->uptSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->visSignal:Ljava/lang/Long;

    if-eqz v1, :cond_11

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->visSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->swzSignal:Ljava/lang/Long;

    if-eqz v1, :cond_12

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->swzSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->psnSignal:Ljava/lang/Long;

    if-eqz v1, :cond_13

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->psnSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->reqType:Ljava/lang/Long;

    if-eqz v1, :cond_14

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->reqType:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->jbkSignal:Ljava/lang/Long;

    if-eqz v1, :cond_15

    const/16 v1, 0x16

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->jbkSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->usgSignal:Ljava/lang/Long;

    if-eqz v1, :cond_16

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->usgSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->didSignal:Ljava/lang/String;

    if-eqz v1, :cond_17

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->didSignal:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzsn;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_17
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->evtTime:Ljava/lang/Long;

    if-eqz v1, :cond_18

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->evtTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->didSignalType:Ljava/lang/Integer;

    if-eqz v1, :cond_19

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->didSignalType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzsn;->zzC(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_19
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->intSignal:Ljava/lang/String;

    if-eqz v1, :cond_1a

    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->intSignal:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzsn;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1a
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->didOptOut:Ljava/lang/Boolean;

    if-eqz v1, :cond_1b

    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->didOptOut:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzsn;->zzf(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1b
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->cerSignal:Ljava/lang/String;

    if-eqz v1, :cond_1c

    const/16 v1, 0x1d

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->cerSignal:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzsn;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->didSignalAndroidAdId:Ljava/lang/String;

    if-eqz v1, :cond_1d

    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->didSignalAndroidAdId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzsn;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1d
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->uwSignal:Ljava/lang/Long;

    if-eqz v1, :cond_1e

    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->uwSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1e
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->uhSignal:Ljava/lang/Long;

    if-eqz v1, :cond_1f

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->uhSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1f
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->utzSignal:Ljava/lang/Long;

    if-eqz v1, :cond_20

    const/16 v1, 0x21

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->utzSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->vnmSignal:Ljava/lang/String;

    if-eqz v1, :cond_21

    const/16 v1, 0x22

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->vnmSignal:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzsn;->zzo(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_21
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->vcdSignal:Ljava/lang/Long;

    if-eqz v1, :cond_22

    const/16 v1, 0x23

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->vcdSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_22
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcpSignal:Ljava/lang/Long;

    if-eqz v1, :cond_23

    const/16 v1, 0x24

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcpSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_23
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcdSignal:Ljava/lang/Long;

    if-eqz v1, :cond_24

    const/16 v1, 0x25

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcdSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_24
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->adAttestationSignal:Lcom/google/ads/afma/nano/NanoAfmaSignals$AdAttestationSignal;

    if-eqz v1, :cond_25

    const/16 v1, 0x26

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->adAttestationSignal:Lcom/google/ads/afma/nano/NanoAfmaSignals$AdAttestationSignal;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzsn;->zzc(ILcom/google/android/gms/internal/zzsu;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_25
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcuSignal:Ljava/lang/Long;

    if-eqz v1, :cond_26

    const/16 v1, 0x27

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcuSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_26
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcmSignal:Ljava/lang/Long;

    if-eqz v1, :cond_27

    const/16 v1, 0x28

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcmSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_27
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcdnSignal:Ljava/lang/Long;

    if-eqz v1, :cond_28

    const/16 v1, 0x29

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcdnSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_28
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tccSignal:Ljava/lang/Long;

    if-eqz v1, :cond_29

    const/16 v1, 0x2a

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tccSignal:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsn;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_29
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->previousTouches:[Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->previousTouches:[Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;

    array-length v1, v1

    if-lez v1, :cond_2c

    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->previousTouches:[Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_2b

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->previousTouches:[Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2a

    const/16 v3, 0x2b

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzsn;->zzc(ILcom/google/android/gms/internal/zzsu;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2b
    move v0, v1

    :cond_2c
    iget-object v1, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->rawAdAttestationSignal:Lcom/google/ads/afma/nano/NanoAfmaSignals$RawAdAttestationSignal;

    if-eqz v1, :cond_2d

    const/16 v1, 0xc9

    iget-object v2, p0, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->rawAdAttestationSignal:Lcom/google/ads/afma/nano/NanoAfmaSignals$RawAdAttestationSignal;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzsn;->zzc(ILcom/google/android/gms/internal/zzsu;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2d
    return v0
.end method
