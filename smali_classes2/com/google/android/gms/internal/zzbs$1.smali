.class Lcom/google/android/gms/internal/zzbs$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbs;->zzd(Lcom/google/android/gms/internal/zzbp;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic zzvy:Lcom/google/android/gms/internal/zzbp;

.field final synthetic zzvz:Lcom/google/android/gms/internal/zzbs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbs;Lcom/google/android/gms/internal/zzbp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbs$1;->zzvz:Lcom/google/android/gms/internal/zzbs;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbs$1;->zzvy:Lcom/google/android/gms/internal/zzbp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbs$1;->zzvy:Lcom/google/android/gms/internal/zzbp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbs$1;->zzvz:Lcom/google/android/gms/internal/zzbs;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbs;->zza(Lcom/google/android/gms/internal/zzbs;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbp;->zza(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
