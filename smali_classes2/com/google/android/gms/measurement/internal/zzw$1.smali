.class Lcom/google/android/gms/measurement/internal/zzw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/zzw;-><init>(Lcom/google/android/gms/measurement/internal/zzaa;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaYs:Lcom/google/android/gms/measurement/internal/zzw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzw$1;->zzaYs:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzw$1;->zzaYs:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->start()V

    return-void
.end method
