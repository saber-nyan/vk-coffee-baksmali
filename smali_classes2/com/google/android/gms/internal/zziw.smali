.class public Lcom/google/android/gms/internal/zziw;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zziw$zzc;,
        Lcom/google/android/gms/internal/zziw$zzb;,
        Lcom/google/android/gms/internal/zziw$zza;
    }
.end annotation


# static fields
.field private static zzMy:Lcom/google/android/gms/internal/zzl;

.field public static final zzMz:Lcom/google/android/gms/internal/zziw$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zziw$zza",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzqy:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zziw;->zzqy:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zziw$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zziw$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zziw;->zzMz:Lcom/google/android/gms/internal/zziw$zza;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zziw;->zzS(Landroid/content/Context;)Lcom/google/android/gms/internal/zzl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zziw;->zzMy:Lcom/google/android/gms/internal/zzl;

    return-void
.end method

.method private static zzS(Landroid/content/Context;)Lcom/google/android/gms/internal/zzl;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/zziw;->zzqy:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zziw;->zzMy:Lcom/google/android/gms/internal/zzl;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzac;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/zzl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zziw;->zzMy:Lcom/google/android/gms/internal/zzl;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zziw;->zzMy:Lcom/google/android/gms/internal/zzl;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zziw$zza;)Lcom/google/android/gms/internal/zzjg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zziw$zza",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzjg",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zziw$zzc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zziw$zzc;-><init>(Lcom/google/android/gms/internal/zziw;Lcom/google/android/gms/internal/zziw$1;)V

    sget-object v1, Lcom/google/android/gms/internal/zziw;->zzMy:Lcom/google/android/gms/internal/zzl;

    new-instance v2, Lcom/google/android/gms/internal/zziw$zzb;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/internal/zziw$zzb;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zziw$zza;Lcom/google/android/gms/internal/zzm$zzb;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzl;->zze(Lcom/google/android/gms/internal/zzk;)Lcom/google/android/gms/internal/zzk;

    return-object v0
.end method

.method public zzb(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/zzjg;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/zzjg",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Lcom/google/android/gms/internal/zziw$zzc;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zziw$zzc;-><init>(Lcom/google/android/gms/internal/zziw;Lcom/google/android/gms/internal/zziw$1;)V

    new-instance v4, Lcom/google/android/gms/internal/zziw$2;

    invoke-direct {v4, p0, p1, v3}, Lcom/google/android/gms/internal/zziw$2;-><init>(Lcom/google/android/gms/internal/zziw;Ljava/lang/String;Lcom/google/android/gms/internal/zziw$zzc;)V

    new-instance v0, Lcom/google/android/gms/internal/zziw$3;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zziw$3;-><init>(Lcom/google/android/gms/internal/zziw;Ljava/lang/String;Lcom/google/android/gms/internal/zzm$zzb;Lcom/google/android/gms/internal/zzm$zza;Ljava/util/Map;)V

    sget-object v1, Lcom/google/android/gms/internal/zziw;->zzMy:Lcom/google/android/gms/internal/zzl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzl;->zze(Lcom/google/android/gms/internal/zzk;)Lcom/google/android/gms/internal/zzk;

    return-object v3
.end method
