.class Lcom/google/android/gms/internal/zzef$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzef;->zzaa(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzAP:Ljava/lang/String;

.field final synthetic zzAU:Lcom/google/android/gms/internal/zzef;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzef;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzef$5;->zzAU:Lcom/google/android/gms/internal/zzef;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzef$5;->zzAP:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef$5;->zzAU:Lcom/google/android/gms/internal/zzef;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzef;->zza(Lcom/google/android/gms/internal/zzef;)Lcom/google/android/gms/internal/zzjp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzef$5;->zzAP:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzjp;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
