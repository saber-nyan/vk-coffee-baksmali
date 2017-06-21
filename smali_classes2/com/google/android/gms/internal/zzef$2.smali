.class Lcom/google/android/gms/internal/zzef$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzef;->zze(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzAS:Ljava/lang/String;

.field final synthetic zzAU:Lcom/google/android/gms/internal/zzef;

.field final synthetic zzAV:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzef;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzef$2;->zzAU:Lcom/google/android/gms/internal/zzef;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzef$2;->zzAS:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzef$2;->zzAV:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef$2;->zzAU:Lcom/google/android/gms/internal/zzef;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzef;->zza(Lcom/google/android/gms/internal/zzef;)Lcom/google/android/gms/internal/zzjp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzef$2;->zzAS:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzef$2;->zzAV:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzjp;->zze(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
