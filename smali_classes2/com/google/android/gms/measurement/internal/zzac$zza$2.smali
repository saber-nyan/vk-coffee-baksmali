.class Lcom/google/android/gms/measurement/internal/zzac$zza$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/zzac$zza;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzQQ:Landroid/content/ComponentName;

.field final synthetic zzaYY:Lcom/google/android/gms/measurement/internal/zzac$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzac$zza;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzac$zza$2;->zzaYY:Lcom/google/android/gms/measurement/internal/zzac$zza;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzac$zza$2;->zzQQ:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzac$zza$2;->zzaYY:Lcom/google/android/gms/measurement/internal/zzac$zza;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzac$zza;->zzaYU:Lcom/google/android/gms/measurement/internal/zzac;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzac$zza$2;->zzQQ:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzac;Landroid/content/ComponentName;)V

    return-void
.end method
