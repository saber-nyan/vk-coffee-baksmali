.class Lcom/google/android/gms/internal/zzhz$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhz;->zzbr()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzKP:Lcom/google/android/gms/internal/zzhz;

.field final synthetic zzpF:Lcom/google/android/gms/internal/zzif;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhz;Lcom/google/android/gms/internal/zzif;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhz$1;->zzKP:Lcom/google/android/gms/internal/zzhz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhz$1;->zzpF:Lcom/google/android/gms/internal/zzif;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhz$1;->zzKP:Lcom/google/android/gms/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhz;->zza(Lcom/google/android/gms/internal/zzhz;)Lcom/google/android/gms/internal/zzht;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhz$1;->zzpF:Lcom/google/android/gms/internal/zzif;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzht;->zzb(Lcom/google/android/gms/internal/zzif;)V

    return-void
.end method
