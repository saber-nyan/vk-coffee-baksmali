.class final Lcom/google/android/gms/internal/zzip$7;
.super Lcom/google/android/gms/internal/zzip$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzip;->zzd(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzLT:Ljava/lang/String;

.field final synthetic zzxh:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzip$7;->zzxh:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzip$7;->zzLT:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzip$zza;-><init>(Lcom/google/android/gms/internal/zzip$1;)V

    return-void
.end method


# virtual methods
.method public zzbr()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzip$7;->zzxh:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzip;->zzw(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "content_url_hashes"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzip$7;->zzLT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
