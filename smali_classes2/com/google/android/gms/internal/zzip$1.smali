.class final Lcom/google/android/gms/internal/zzip$1;
.super Lcom/google/android/gms/internal/zzip$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzip;->zza(Landroid/content/Context;Z)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzLP:Z

.field final synthetic zzxh:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzip$1;->zzxh:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzip$1;->zzLP:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzip$zza;-><init>(Lcom/google/android/gms/internal/zzip$1;)V

    return-void
.end method


# virtual methods
.method public zzbr()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzip$1;->zzxh:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzip;->zzw(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "use_https"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzip$1;->zzLP:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
