.class final Lcom/google/android/gms/internal/zzhd$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhd;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzbm;Lcom/google/android/gms/internal/zzhc;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzIU:Lcom/google/android/gms/internal/zzhc;

.field final synthetic zzIV:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field final synthetic zzIY:Lcom/google/android/gms/internal/zzhf;

.field final synthetic zzxh:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhc;Landroid/content/Context;Lcom/google/android/gms/internal/zzhf;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhd$4;->zzIU:Lcom/google/android/gms/internal/zzhc;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhd$4;->zzxh:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzhd$4;->zzIY:Lcom/google/android/gms/internal/zzhf;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzhd$4;->zzIV:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhd$4;->zzIU:Lcom/google/android/gms/internal/zzhc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhc;->zzIJ:Lcom/google/android/gms/internal/zzhl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhd$4;->zzxh:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhd$4;->zzIY:Lcom/google/android/gms/internal/zzhf;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhd$4;->zzIV:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzhl;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzhf;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    return-void
.end method
