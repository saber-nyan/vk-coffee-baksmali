.class Lcom/google/android/gms/internal/zzfm$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfm;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzCZ:Lcom/google/android/gms/internal/zzfm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfm$1;->zzCZ:Lcom/google/android/gms/internal/zzfm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfm$1;->zzCZ:Lcom/google/android/gms/internal/zzfm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfm;->createIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfm$1;->zzCZ:Lcom/google/android/gms/internal/zzfm;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzfm;->zza(Lcom/google/android/gms/internal/zzfm;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzir;->zzb(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
