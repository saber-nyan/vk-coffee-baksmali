.class Lcom/google/android/gms/measurement/internal/zzx$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/EventParcel;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaHU:Ljava/lang/String;

.field final synthetic zzaYA:Ljava/lang/String;

.field final synthetic zzaYy:Lcom/google/android/gms/measurement/internal/zzx;

.field final synthetic zzaYz:Lcom/google/android/gms/measurement/internal/EventParcel;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzx;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/EventParcel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx$3;->zzaYy:Lcom/google/android/gms/measurement/internal/zzx;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzx$3;->zzaYA:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzx$3;->zzaYz:Lcom/google/android/gms/measurement/internal/EventParcel;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzx$3;->zzaHU:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzx$3;->zzaYy:Lcom/google/android/gms/measurement/internal/zzx;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzx$3;->zzaYA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzx;->zzfl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzx$3;->zzaYy:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzx;)Lcom/google/android/gms/measurement/internal/zzw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzx$3;->zzaYz:Lcom/google/android/gms/measurement/internal/EventParcel;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx$3;->zzaHU:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzw;->zza(Lcom/google/android/gms/measurement/internal/EventParcel;Ljava/lang/String;)V

    return-void
.end method
