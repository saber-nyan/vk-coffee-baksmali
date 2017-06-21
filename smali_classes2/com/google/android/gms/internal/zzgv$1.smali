.class Lcom/google/android/gms/internal/zzgv$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgv;->zzbr()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzGE:Lcom/google/android/gms/internal/zzgv;

.field final synthetic zzpF:Lcom/google/android/gms/internal/zzif;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgv;Lcom/google/android/gms/internal/zzif;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgv$1;->zzGE:Lcom/google/android/gms/internal/zzgv;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgv$1;->zzpF:Lcom/google/android/gms/internal/zzif;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgv$1;->zzGE:Lcom/google/android/gms/internal/zzgv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgv;->zza(Lcom/google/android/gms/internal/zzgv;)Lcom/google/android/gms/internal/zzgr$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgv$1;->zzpF:Lcom/google/android/gms/internal/zzif;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzgr$zza;->zzb(Lcom/google/android/gms/internal/zzif;)V

    return-void
.end method
