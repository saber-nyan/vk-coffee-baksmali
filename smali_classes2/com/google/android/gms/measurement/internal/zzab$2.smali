.class Lcom/google/android/gms/measurement/internal/zzab$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/zzab;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic zzaHU:Ljava/lang/String;

.field final synthetic zzaYH:Lcom/google/android/gms/measurement/internal/zzab;

.field final synthetic zzaYI:Ljava/lang/String;

.field final synthetic zzaYJ:J

.field final synthetic zzaYK:Landroid/os/Bundle;

.field final synthetic zzaYL:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzab;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzab$2;->zzaYH:Lcom/google/android/gms/measurement/internal/zzab;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzab$2;->zzaYI:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzab$2;->val$name:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzab$2;->zzaYJ:J

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzab$2;->zzaYK:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/google/android/gms/measurement/internal/zzab$2;->zzaYL:Z

    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/zzab$2;->zzaHU:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzab$2;->zzaYH:Lcom/google/android/gms/measurement/internal/zzab;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzab$2;->zzaYI:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzab$2;->val$name:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzab$2;->zzaYJ:J

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzab$2;->zzaYK:Landroid/os/Bundle;

    iget-boolean v7, p0, Lcom/google/android/gms/measurement/internal/zzab$2;->zzaYL:Z

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzab$2;->zzaHU:Ljava/lang/String;

    invoke-static/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzab;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZLjava/lang/String;)V

    return-void
.end method
