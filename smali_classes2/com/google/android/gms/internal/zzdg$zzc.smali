.class Lcom/google/android/gms/internal/zzdg$zzc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zzc"
.end annotation


# instance fields
.field final synthetic zzzm:Lcom/google/android/gms/internal/zzdg;

.field private final zzzt:Lcom/google/android/gms/internal/zzdg$zzd;

.field private final zzzu:Z

.field private final zzzv:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdg;ZLcom/google/android/gms/internal/zzdg$zzd;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdg$zzc;->zzzm:Lcom/google/android/gms/internal/zzdg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzdg$zzc;->zzzu:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdg$zzc;->zzzt:Lcom/google/android/gms/internal/zzdg$zzd;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdg$zzc;->zzzv:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdg$zzc;->zzzv:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdg$zzc;->zzzu:Z

    return v0
.end method

.method public zzdY()Lcom/google/android/gms/internal/zzdg$zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdg$zzc;->zzzt:Lcom/google/android/gms/internal/zzdg$zzd;

    return-object v0
.end method
