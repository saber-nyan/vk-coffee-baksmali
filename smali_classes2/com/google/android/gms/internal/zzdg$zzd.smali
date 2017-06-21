.class Lcom/google/android/gms/internal/zzdg$zzd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzd"
.end annotation


# instance fields
.field private final zzxY:Ljava/lang/String;

.field private final zzzp:Ljava/lang/String;

.field private final zzzw:I

.field private final zzzx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzdg$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzdg$zza;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdg$zzd;->zzzp:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzdg$zzd;->zzzw:I

    if-nez p3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdg$zzd;->zzzx:Ljava/util/List;

    :goto_0
    iput-object p4, p0, Lcom/google/android/gms/internal/zzdg$zzd;->zzxY:Ljava/lang/String;

    return-void

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/zzdg$zzd;->zzzx:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdg$zzd;->zzxY:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdg$zzd;->zzzw:I

    return v0
.end method

.method public zzdU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdg$zzd;->zzzp:Ljava/lang/String;

    return-object v0
.end method

.method public zzdZ()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/internal/zzdg$zza;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdg$zzd;->zzzx:Ljava/util/List;

    return-object v0
.end method
