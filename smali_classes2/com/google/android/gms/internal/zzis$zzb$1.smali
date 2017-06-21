.class Lcom/google/android/gms/internal/zzis$zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzis$zzb;->zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzMg:Lcom/google/android/gms/internal/zzis$zzb;

.field final synthetic zzxh:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzis$zzb;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzis$zzb$1;->zzMg:Lcom/google/android/gms/internal/zzis$zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzis$zzb$1;->zzxh:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzis$zzb$1;->zzhz()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public zzhz()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzis$zzb$1;->zzxh:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
