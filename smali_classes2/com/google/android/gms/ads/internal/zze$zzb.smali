.class public Lcom/google/android/gms/ads/internal/zze$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/zze$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# instance fields
.field private final zzpC:Lcom/google/android/gms/internal/zzif$zza;

.field private final zzpD:Lcom/google/android/gms/internal/zzjp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzif$zza;Lcom/google/android/gms/internal/zzjp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zze$zzb;->zzpC:Lcom/google/android/gms/internal/zzif$zza;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zze$zzb;->zzpD:Lcom/google/android/gms/internal/zzjp;

    return-void
.end method


# virtual methods
.method public zzr(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "An auto-clicking creative is blocked"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaI(Ljava/lang/String;)V

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v1, "//pagead2.googlesyndication.com/pagead/gen_204"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "gmob-apps-blocked-navigation"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "navigationURL"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zze$zzb;->zzpC:Lcom/google/android/gms/internal/zzif$zza;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zze$zzb;->zzpC:Lcom/google/android/gms/internal/zzif$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zze$zzb;->zzpC:Lcom/google/android/gms/internal/zzif$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHY:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "debugDialog"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zze$zzb;->zzpC:Lcom/google/android/gms/internal/zzif$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzif$zza;->zzLe:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzHY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zze$zzb;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzjp;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zze$zzb;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzjp;->zzhX()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzir;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
