.class Lcom/google/android/gms/internal/zzam$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field private zzon:Ljava/lang/String;

.field private zzoo:Z

.field final synthetic zzop:Lcom/google/android/gms/internal/zzam;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzam;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzam$zza;->zzop:Lcom/google/android/gms/internal/zzam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzam$zza;->zzon:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzam$zza;->zzoo:Z

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzam$zza;->zzon:Ljava/lang/String;

    return-object v0
.end method

.method public isLimitAdTrackingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzam$zza;->zzoo:Z

    return v0
.end method
