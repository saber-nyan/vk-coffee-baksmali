.class public abstract Lcom/google/android/gms/internal/zzal;
.super Lcom/google/android/gms/internal/zzak;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzal$zza;
    }
.end annotation


# static fields
.field private static startTime:J

.field private static zznH:Ljava/lang/reflect/Method;

.field private static zznI:Ljava/lang/reflect/Method;

.field private static zznJ:Ljava/lang/reflect/Method;

.field private static zznK:Ljava/lang/reflect/Method;

.field private static zznL:Ljava/lang/reflect/Method;

.field private static zznM:Ljava/lang/reflect/Method;

.field private static zznN:Ljava/lang/reflect/Method;

.field private static zznO:Ljava/lang/reflect/Method;

.field private static zznP:Ljava/lang/reflect/Method;

.field private static zznQ:Ljava/lang/reflect/Method;

.field private static zznR:Ljava/lang/reflect/Method;

.field private static zznS:Ljava/lang/reflect/Method;

.field private static zznT:Ljava/lang/reflect/Method;

.field private static zznU:Ljava/lang/String;

.field private static zznV:Ljava/lang/String;

.field private static zznW:Ljava/lang/String;

.field private static zznX:Lcom/google/android/gms/internal/zzaq;

.field static zznY:Z

.field protected static zznZ:Lcom/google/android/gms/clearcut/zzb;

.field protected static zzoa:Lcom/google/ads/afma/nano/NanoAdshieldEvent$AdShieldEvent;

.field protected static zzob:I

.field private static zzoc:Ljava/util/Random;

.field private static zzod:Lcom/google/android/gms/common/zzc;

.field private static zzoe:Z

.field protected static zzof:Z

.field protected static zzog:Z

.field protected static zzoh:Z

.field protected static zzoi:Z

.field private static zzoj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/gms/internal/zzal;->startTime:J

    sput-boolean v2, Lcom/google/android/gms/internal/zzal;->zznY:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzal;->zznZ:Lcom/google/android/gms/clearcut/zzb;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzal;->zzoc:Ljava/util/Random;

    invoke-static {}, Lcom/google/android/gms/common/zzc;->zzoK()Lcom/google/android/gms/common/zzc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzal;->zzod:Lcom/google/android/gms/common/zzc;

    sput-boolean v2, Lcom/google/android/gms/internal/zzal;->zzof:Z

    sput-boolean v2, Lcom/google/android/gms/internal/zzal;->zzog:Z

    sput-boolean v2, Lcom/google/android/gms/internal/zzal;->zzoh:Z

    sput-boolean v2, Lcom/google/android/gms/internal/zzal;->zzoi:Z

    sput-boolean v2, Lcom/google/android/gms/internal/zzal;->zzoj:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzap;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzak;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzap;)V

    new-instance v0, Lcom/google/ads/afma/nano/NanoAdshieldEvent$AdShieldEvent;

    invoke-direct {v0}, Lcom/google/ads/afma/nano/NanoAdshieldEvent$AdShieldEvent;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzal;->zzoa:Lcom/google/ads/afma/nano/NanoAdshieldEvent$AdShieldEvent;

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zzoa:Lcom/google/ads/afma/nano/NanoAdshieldEvent$AdShieldEvent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ads/afma/nano/NanoAdshieldEvent$AdShieldEvent;->appId:Ljava/lang/String;

    return-void
.end method

.method private zzT()V
    .locals 5

    sget-boolean v0, Lcom/google/android/gms/internal/zzal;->zzoi:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznZ:Lcom/google/android/gms/clearcut/zzb;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznZ:Lcom/google/android/gms/clearcut/zzb;

    sget-object v1, Lcom/google/android/gms/internal/zzal;->zznG:Lcom/google/android/gms/common/api/GoogleApiClient;

    const-wide/16 v2, 0x64

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/clearcut/zzb;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;JLjava/util/concurrent/TimeUnit;)Z

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznG:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_0
    return-void
.end method

.method static zzU()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzal$zza;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznU:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznU:Ljava/lang/String;

    return-object v0
.end method

.method static zzV()Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzal$zza;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznH:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznH:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static zzW()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzal$zza;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznJ:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznJ:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static zzX()Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzal$zza;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznI:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznI:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzal$zza;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznV:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznV:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznK:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>()V

    throw v0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznK:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzap;->zza([BZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzal;->zznV:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznV:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static zza(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Landroid/util/DisplayMetrics;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzal$zza;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznL:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>()V

    throw v0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznL:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static zza(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/google/android/gms/internal/zzal;->zzoi:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/android/gms/internal/zzal;->zzof:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznZ:Lcom/google/android/gms/clearcut/zzb;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznZ:Lcom/google/android/gms/clearcut/zzb;

    sget-object v1, Lcom/google/android/gms/internal/zzal;->zzoa:Lcom/google/ads/afma/nano/NanoAdshieldEvent$AdShieldEvent;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzsu;->toByteArray(Lcom/google/android/gms/internal/zzsu;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/clearcut/zzb;->zzi([B)Lcom/google/android/gms/clearcut/zzb$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/clearcut/zzb$zza;->zzbr(I)Lcom/google/android/gms/clearcut/zzb$zza;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/clearcut/zzb$zza;->zzbq(I)Lcom/google/android/gms/clearcut/zzb$zza;

    sget-object v1, Lcom/google/android/gms/internal/zzal;->zznG:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/clearcut/zzb$zza;->zzd(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    :cond_0
    return-void
.end method

.method protected static declared-synchronized zza(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/zzap;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/google/android/gms/internal/zzal;

    monitor-enter v3

    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/internal/zzal;->zznY:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/zzaq;

    const/4 v4, 0x0

    invoke-direct {v0, p2, v4}, Lcom/google/android/gms/internal/zzaq;-><init>(Lcom/google/android/gms/internal/zzap;Ljava/security/SecureRandom;)V

    sput-object v0, Lcom/google/android/gms/internal/zzal;->zznX:Lcom/google/android/gms/internal/zzaq;

    sput-object p0, Lcom/google/android/gms/internal/zzal;->zznU:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbt;->initialize(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzal;->zzm(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzal;->zzV()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sput-wide v4, Lcom/google/android/gms/internal/zzal;->startTime:J

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzal;->zzoc:Ljava/util/Random;
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzal$zza; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/google/android/gms/clearcut/zzb;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzal;->zznG:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {}, Lcom/google/android/gms/common/zzc;->zzoK()Lcom/google/android/gms/common/zzc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzal;->zzod:Lcom/google/android/gms/common/zzc;

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zzod:Lcom/google/android/gms/common/zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/zzc;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/zzal;->zzoe:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbt;->initialize(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/zzbt;->zzwZ:Lcom/google/android/gms/internal/zzbp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbp;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/zzal;->zzof:Z

    new-instance v0, Lcom/google/android/gms/clearcut/zzb;

    const-string/jumbo v4, "ADSHIELD"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v0, p1, v4, v5, v6}, Lcom/google/android/gms/clearcut/zzb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzal;->zznZ:Lcom/google/android/gms/clearcut/zzb;
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/android/gms/internal/zzal$zza; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzal;->zzod:Lcom/google/android/gms/common/zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/zzc;->zzaj(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/google/android/gms/internal/zzal;->zzoj:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/zzal;->zznY:Z
    :try_end_3
    .catch Lcom/google/android/gms/internal/zzal$zza; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    :goto_3
    monitor-exit v3

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method static zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzal$zza;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznW:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznW:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznN:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>()V

    throw v0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznN:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzap;->zza([BZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzal;->zznW:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznW:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static zzb([BLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzal$zza;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/zzal;->zznX:Lcom/google/android/gms/internal/zzaq;

    invoke-virtual {v1, p0, p1}, Lcom/google/android/gms/internal/zzaq;->zzc([BLjava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzaq$zza; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private zze(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/zzal;->zzoe:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznG:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/zzal;->zzoi:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/zzal;->zzoi:Z

    goto :goto_0
.end method

.method static zzf(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzal$zza;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznM:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznM:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    return-object v0
.end method

.method static zzg(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzal$zza;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznQ:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznQ:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static zzh(Landroid/content/Context;)Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzal$zza;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznR:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznR:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static zzi(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzal$zza;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznO:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznO:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    return-object v0
.end method

.method static zzj(Landroid/content/Context;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzal$zza;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznP:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznP:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static zzk(Landroid/content/Context;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzal$zza;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznS:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznS:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static zzl(Landroid/content/Context;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzal$zza;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznT:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzal;->zznT:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static zzm(Landroid/content/Context;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzal$zza;
        }
    .end annotation

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/zzal;->zznX:Lcom/google/android/gms/internal/zzaq;

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaq;->zzl(Ljava/lang/String;)[B

    move-result-object v4

    sget-object v2, Lcom/google/android/gms/internal/zzal;->zznX:Lcom/google/android/gms/internal/zzaq;

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/zzaq;->zzc([BLjava/lang/String;)[B

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "dex"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzal$zza;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/internal/zzaq$zza; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5

    :catch_0
    move-exception v2

    new-instance v3, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    move-object v3, v2

    :try_start_1
    const-string/jumbo v2, "ads"

    const-string/jumbo v6, ".jar"

    invoke-static {v2, v6, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v7, 0x0

    array-length v8, v5

    invoke-virtual {v2, v5, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/gms/internal/zzaq$zza; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    new-instance v2, Ldalvik/system/DexClassLoader;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v2, v5, v7, v8, v9}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzal()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzal;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzaz()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/google/android/gms/internal/zzal;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzat()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/google/android/gms/internal/zzal;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzap()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/google/android/gms/internal/zzal;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzaB()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/google/android/gms/internal/zzal;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzan()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/google/android/gms/internal/zzal;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzax()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/google/android/gms/internal/zzal;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzav()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/google/android/gms/internal/zzal;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzaj()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Lcom/google/android/gms/internal/zzal;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzah()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Lcom/google/android/gms/internal/zzal;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzaf()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/zzal;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzar()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/zzal;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzad()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/zzal;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzam()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/zzal;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/zzal;->zznH:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzaA()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzal;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/zzal;->zznI:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzau()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzal;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v8, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/zzal;->zznJ:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzaq()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzal;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v18, Landroid/content/Context;

    aput-object v18, v7, v8

    invoke-virtual {v9, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/zzal;->zznK:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzaC()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzal;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/view/MotionEvent;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/util/DisplayMetrics;

    aput-object v9, v7, v8

    invoke-virtual {v10, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/zzal;->zznL:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzao()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzal;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v11, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/zzal;->zznM:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzay()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzal;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v12, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/zzal;->zznN:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzaw()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzal;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v13, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/zzal;->zznO:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzak()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzal;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v14, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/zzal;->zznP:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzai()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzal;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v15, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/zzal;->zznQ:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzal;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/zzal;->zznR:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzas()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzal;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/zzal;->zznS:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzar;->zzae()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzal;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v5, v7

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/zzal;->zznT:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, ".jar"

    const-string/jumbo v6, ".dex"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, ".jar"

    const-string/jumbo v7, ".dex"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    throw v2
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/android/gms/internal/zzaq$zza; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5

    :catch_1
    move-exception v2

    new-instance v3, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v2

    new-instance v3, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_3
    move-exception v2

    new-instance v3, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_4
    move-exception v2

    new-instance v3, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_5
    move-exception v2

    new-instance v3, Lcom/google/android/gms/internal/zzal$zza;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/zzal$zza;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method protected zzS()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/zzal;->zzoj:Z

    return v0
.end method

.method protected zzc(Landroid/content/Context;)Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;
    .locals 8

    new-instance v1, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;

    invoke-direct {v1}, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;-><init>()V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzal;->zze(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zzoc:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/zzal;->zzob:I

    const/4 v0, 0x0

    sget v2, Lcom/google/android/gms/internal/zzal;->zzob:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzal;->zza(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/zzal;->zzW()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->osVersion:Ljava/lang/String;

    const/4 v0, 0x1

    sget v2, Lcom/google/android/gms/internal/zzal;->zzob:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzal;->zza(II)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzal$zza; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/zzal;->zzU()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->afmaVersion:Ljava/lang/String;

    const/4 v0, 0x2

    sget v2, Lcom/google/android/gms/internal/zzal;->zzob:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzal;->zza(II)V
    :try_end_2
    .catch Lcom/google/android/gms/internal/zzal$zza; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/zzal;->zzV()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->evtTime:Ljava/lang/Long;

    sget-wide v4, Lcom/google/android/gms/internal/zzal;->startTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    sget-wide v4, Lcom/google/android/gms/internal/zzal;->startTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->uptSignal:Ljava/lang/Long;

    sget-wide v2, Lcom/google/android/gms/internal/zzal;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->usgSignal:Ljava/lang/Long;

    :cond_0
    const/16 v0, 0x19

    sget v2, Lcom/google/android/gms/internal/zzal;->zzob:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzal;->zza(II)V
    :try_end_3
    .catch Lcom/google/android/gms/internal/zzal$zza; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    :try_start_4
    invoke-static {p1}, Lcom/google/android/gms/internal/zzal;->zzi(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->uwSignal:Ljava/lang/Long;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->uhSignal:Ljava/lang/Long;

    const/16 v0, 0x1f

    sget v2, Lcom/google/android/gms/internal/zzal;->zzob:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzal;->zza(II)V
    :try_end_4
    .catch Lcom/google/android/gms/internal/zzal$zza; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_3
    :try_start_5
    invoke-static {}, Lcom/google/android/gms/internal/zzal;->zzX()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->utzSignal:Ljava/lang/Long;

    const/16 v0, 0x21

    sget v2, Lcom/google/android/gms/internal/zzal;->zzob:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzal;->zza(II)V
    :try_end_5
    .catch Lcom/google/android/gms/internal/zzal$zza; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_4
    :try_start_6
    sget-boolean v0, Lcom/google/android/gms/internal/zzal;->zzog:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/google/android/gms/internal/zzal;->zzoh:Z
    :try_end_6
    .catch Lcom/google/android/gms/internal/zzal$zza; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    if-eqz v0, :cond_1

    :goto_5
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzal;->zznF:Lcom/google/android/gms/internal/zzap;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzal;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzap;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->cerSignal:Ljava/lang/String;

    const/16 v0, 0x1d

    sget v2, Lcom/google/android/gms/internal/zzal;->zzob:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzal;->zza(II)V
    :try_end_7
    .catch Lcom/google/android/gms/internal/zzal$zza; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :goto_6
    :try_start_8
    invoke-static {p1}, Lcom/google/android/gms/internal/zzal;->zzj(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->btsSignal:Ljava/lang/Long;

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->btlSignal:Ljava/lang/Long;

    const/4 v0, 0x5

    sget v2, Lcom/google/android/gms/internal/zzal;->zzob:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzal;->zza(II)V
    :try_end_8
    .catch Lcom/google/android/gms/internal/zzal$zza; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :goto_7
    :try_start_9
    invoke-static {p1}, Lcom/google/android/gms/internal/zzal;->zzk(Landroid/content/Context;)I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->ornSignal:Ljava/lang/Long;

    const/16 v0, 0xc

    sget v2, Lcom/google/android/gms/internal/zzal;->zzob:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzal;->zza(II)V
    :try_end_9
    .catch Lcom/google/android/gms/internal/zzal$zza; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :goto_8
    :try_start_a
    invoke-static {p1}, Lcom/google/android/gms/internal/zzal;->zzl(Landroid/content/Context;)I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->atvSignal:Ljava/lang/Long;

    const/4 v0, 0x3

    sget v2, Lcom/google/android/gms/internal/zzal;->zzob:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzal;->zza(II)V
    :try_end_a
    .catch Lcom/google/android/gms/internal/zzal$zza; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    :goto_9
    :try_start_b
    invoke-static {p1}, Lcom/google/android/gms/internal/zzal;->zzg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->vnmSignal:Ljava/lang/String;

    const/16 v0, 0x22

    sget v2, Lcom/google/android/gms/internal/zzal;->zzob:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzal;->zza(II)V
    :try_end_b
    .catch Lcom/google/android/gms/internal/zzal$zza; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    :goto_a
    :try_start_c
    invoke-static {p1}, Lcom/google/android/gms/internal/zzal;->zzh(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->vcdSignal:Ljava/lang/Long;

    const/16 v0, 0x23

    sget v2, Lcom/google/android/gms/internal/zzal;->zzob:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzal;->zza(II)V
    :try_end_c
    .catch Lcom/google/android/gms/internal/zzal$zza; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    :goto_b
    :try_start_d
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzal;->zzT()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    :goto_c
    return-object v1

    :cond_1
    :try_start_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzal;->zznF:Lcom/google/android/gms/internal/zzap;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzal;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzap;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->intSignal:Ljava/lang/String;

    const/16 v0, 0x1b

    sget v2, Lcom/google/android/gms/internal/zzal;->zzob:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzal;->zza(II)V
    :try_end_e
    .catch Lcom/google/android/gms/internal/zzal$zza; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_c

    :catch_2
    move-exception v0

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_7

    :catch_7
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v0

    goto/16 :goto_4

    :catch_9
    move-exception v0

    goto/16 :goto_3

    :catch_a
    move-exception v0

    goto/16 :goto_2

    :catch_b
    move-exception v0

    goto/16 :goto_1

    :catch_c
    move-exception v0

    goto/16 :goto_0
.end method

.method protected zzd(Landroid/content/Context;)Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;
    .locals 8

    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    new-instance v2, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;

    invoke-direct {v2}, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;-><init>()V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzal;->zze(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/zzal;->zzoc:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/zzal;->zzob:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/zzal;->zzU()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->afmaVersion:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzal$zza; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/zzal;->zzW()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->osVersion:Ljava/lang/String;
    :try_end_2
    .catch Lcom/google/android/gms/internal/zzal$zza; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/zzal;->zzV()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->evtTime:Ljava/lang/Long;
    :try_end_3
    .catch Lcom/google/android/gms/internal/zzal$zza; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    const/4 v0, 0x0

    :try_start_4
    sget v3, Lcom/google/android/gms/internal/zzal;->zzob:I

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzal;->zza(II)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzal;->zznx:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzal;->zznE:Landroid/util/DisplayMetrics;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzal;->zza(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, v2, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcxSignal:Ljava/lang/Long;

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, v2, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcySignal:Ljava/lang/Long;

    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, v2, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tctSignal:Ljava/lang/Long;

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, v2, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcpSignal:Ljava/lang/Long;

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, v2, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcdSignal:Ljava/lang/Long;

    const/16 v0, 0xe

    sget v3, Lcom/google/android/gms/internal/zzal;->zzob:I

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzal;->zza(II)V
    :try_end_5
    .catch Lcom/google/android/gms/internal/zzal$zza; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    :try_start_6
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzal;->zznz:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzal;->zznz:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcdnSignal:Ljava/lang/Long;

    :cond_1
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzal;->zznA:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzal;->zznA:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcmSignal:Ljava/lang/Long;

    :cond_2
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzal;->zznB:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzal;->zznB:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tcuSignal:Ljava/lang/Long;

    :cond_3
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzal;->zznC:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzal;->zznC:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->tccSignal:Ljava/lang/Long;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzal;->zzny:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    if-lez v3, :cond_5

    new-array v0, v3, [Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;

    iput-object v0, v2, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->previousTouches:[Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;

    :goto_4
    if-ge v1, v3, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzal;->zzny:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzal;->zznE:Landroid/util/DisplayMetrics;

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/zzal;->zza(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;

    invoke-direct {v5}, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, v5, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;->tcxSignal:Ljava/lang/Long;

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, v5, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;->tcySignal:Ljava/lang/Long;

    iget-object v0, v2, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->previousTouches:[Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;

    aput-object v5, v0, v1
    :try_end_7
    .catch Lcom/google/android/gms/internal/zzal$zza; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_8
    iput-object v0, v2, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->previousTouches:[Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals$TouchInfo;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_5
    :try_start_9
    invoke-static {p1}, Lcom/google/android/gms/internal/zzal;->zzg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->vnmSignal:Ljava/lang/String;
    :try_end_9
    .catch Lcom/google/android/gms/internal/zzal$zza; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :goto_5
    :try_start_a
    invoke-static {p1}, Lcom/google/android/gms/internal/zzal;->zzh(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/google/ads/afma/nano/NanoAfmaSignals$AFMASignals;->vcdSignal:Ljava/lang/Long;
    :try_end_a
    .catch Lcom/google/android/gms/internal/zzal$zza; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    :goto_6
    :try_start_b
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzal;->zzT()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    :goto_7
    return-object v2

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto/16 :goto_3

    :catch_5
    move-exception v0

    goto/16 :goto_2

    :catch_6
    move-exception v0

    goto/16 :goto_1

    :catch_7
    move-exception v0

    goto/16 :goto_0
.end method
