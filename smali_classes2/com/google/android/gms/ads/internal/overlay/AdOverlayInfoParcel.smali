.class public final Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/ads/internal/overlay/zzf;


# instance fields
.field public final orientation:I

.field public final url:Ljava/lang/String;

.field public final versionCode:I

.field public final zzEA:Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

.field public final zzEB:Lcom/google/android/gms/ads/internal/client/zza;

.field public final zzEC:Lcom/google/android/gms/ads/internal/overlay/zzg;

.field public final zzED:Lcom/google/android/gms/internal/zzjp;

.field public final zzEE:Lcom/google/android/gms/internal/zzdb;

.field public final zzEF:Ljava/lang/String;

.field public final zzEG:Z

.field public final zzEH:Ljava/lang/String;

.field public final zzEI:Lcom/google/android/gms/ads/internal/overlay/zzp;

.field public final zzEJ:I

.field public final zzEK:Lcom/google/android/gms/internal/zzdh;

.field public final zzEL:Ljava/lang/String;

.field public final zzEM:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

.field public final zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/overlay/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->CREATOR:Lcom/google/android/gms/ads/internal/overlay/zzf;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;IILjava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/os/IBinder;Ljava/lang/String;Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;)V
    .locals 2
    .param p1, "versionCode"    # I
    .param p2, "adLauncherIntentInfo"    # Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;
    .param p3, "wrappedAdClickListener"    # Landroid/os/IBinder;
    .param p4, "wrappedAdOverlayListener"    # Landroid/os/IBinder;
    .param p5, "wrappedAdWebView"    # Landroid/os/IBinder;
    .param p6, "wrappedAppEventGmsgListener"    # Landroid/os/IBinder;
    .param p7, "baseUrl"    # Ljava/lang/String;
    .param p8, "customClose"    # Z
    .param p9, "html"    # Ljava/lang/String;
    .param p10, "wrappedLeaveApplicationListener"    # Landroid/os/IBinder;
    .param p11, "orientation"    # I
    .param p12, "overlayType"    # I
    .param p13, "url"    # Ljava/lang/String;
    .param p14, "versionInfo"    # Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .param p15, "wrappedInAppPurchaseGmsgListener"    # Landroid/os/IBinder;
    .param p16, "debugMessage"    # Ljava/lang/String;
    .param p17, "interstitialAdParameter"    # Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEA:Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    invoke-static {p3}, Lcom/google/android/gms/dynamic/zzd$zza;->zzbs(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/client/zza;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEB:Lcom/google/android/gms/ads/internal/client/zza;

    invoke-static {p4}, Lcom/google/android/gms/dynamic/zzd$zza;->zzbs(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/overlay/zzg;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEC:Lcom/google/android/gms/ads/internal/overlay/zzg;

    invoke-static {p5}, Lcom/google/android/gms/dynamic/zzd$zza;->zzbs(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzjp;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzED:Lcom/google/android/gms/internal/zzjp;

    invoke-static {p6}, Lcom/google/android/gms/dynamic/zzd$zza;->zzbs(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzdb;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEE:Lcom/google/android/gms/internal/zzdb;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEF:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEG:Z

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEH:Ljava/lang/String;

    invoke-static {p10}, Lcom/google/android/gms/dynamic/zzd$zza;->zzbs(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/overlay/zzp;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEI:Lcom/google/android/gms/ads/internal/overlay/zzp;

    iput p11, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    iput p12, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEJ:I

    iput-object p13, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-static/range {p15 .. p15}, Lcom/google/android/gms/dynamic/zzd$zza;->zzbs(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzdh;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEK:Lcom/google/android/gms/internal/zzdh;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEL:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEM:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/zzjp;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;)V
    .locals 2
    .param p1, "adClickListener"    # Lcom/google/android/gms/ads/internal/client/zza;
    .param p2, "adOverlayListener"    # Lcom/google/android/gms/ads/internal/overlay/zzg;
    .param p3, "leaveApplicationListener"    # Lcom/google/android/gms/ads/internal/overlay/zzp;
    .param p4, "adWebView"    # Lcom/google/android/gms/internal/zzjp;
    .param p5, "orientation"    # I
    .param p6, "versionInfo"    # Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .param p7, "debugMessage"    # Ljava/lang/String;
    .param p8, "interstitialAdParameter"    # Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->versionCode:I

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEA:Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEB:Lcom/google/android/gms/ads/internal/client/zza;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEC:Lcom/google/android/gms/ads/internal/overlay/zzg;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzED:Lcom/google/android/gms/internal/zzjp;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEE:Lcom/google/android/gms/internal/zzdb;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEF:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEG:Z

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEH:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEI:Lcom/google/android/gms/ads/internal/overlay/zzp;

    iput p5, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEJ:I

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEK:Lcom/google/android/gms/internal/zzdh;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEL:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEM:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/zzjp;ZILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 2
    .param p1, "adClickListener"    # Lcom/google/android/gms/ads/internal/client/zza;
    .param p2, "adOverlayListener"    # Lcom/google/android/gms/ads/internal/overlay/zzg;
    .param p3, "leaveApplicationListener"    # Lcom/google/android/gms/ads/internal/overlay/zzp;
    .param p4, "adWebView"    # Lcom/google/android/gms/internal/zzjp;
    .param p5, "customClose"    # Z
    .param p6, "orientation"    # I
    .param p7, "versionInfo"    # Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->versionCode:I

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEA:Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEB:Lcom/google/android/gms/ads/internal/client/zza;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEC:Lcom/google/android/gms/ads/internal/overlay/zzg;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzED:Lcom/google/android/gms/internal/zzjp;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEE:Lcom/google/android/gms/internal/zzdb;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEF:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEG:Z

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEH:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEI:Lcom/google/android/gms/ads/internal/overlay/zzp;

    iput p6, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEJ:I

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEK:Lcom/google/android/gms/internal/zzdh;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEL:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEM:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/internal/zzdb;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/zzjp;ZILjava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzdh;)V
    .locals 2
    .param p1, "adClickListener"    # Lcom/google/android/gms/ads/internal/client/zza;
    .param p2, "adOverlayListener"    # Lcom/google/android/gms/ads/internal/overlay/zzg;
    .param p3, "appEventGmsgListener"    # Lcom/google/android/gms/internal/zzdb;
    .param p4, "leaveApplicationListener"    # Lcom/google/android/gms/ads/internal/overlay/zzp;
    .param p5, "adWebView"    # Lcom/google/android/gms/internal/zzjp;
    .param p6, "customClose"    # Z
    .param p7, "orientation"    # I
    .param p8, "url"    # Ljava/lang/String;
    .param p9, "versionInfo"    # Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .param p10, "inAppPurchaseGmsgListener"    # Lcom/google/android/gms/internal/zzdh;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->versionCode:I

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEA:Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEB:Lcom/google/android/gms/ads/internal/client/zza;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEC:Lcom/google/android/gms/ads/internal/overlay/zzg;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzED:Lcom/google/android/gms/internal/zzjp;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEE:Lcom/google/android/gms/internal/zzdb;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEF:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEG:Z

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEH:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEI:Lcom/google/android/gms/ads/internal/overlay/zzp;

    iput p7, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEJ:I

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEK:Lcom/google/android/gms/internal/zzdh;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEL:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEM:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/internal/zzdb;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/zzjp;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzdh;)V
    .locals 2
    .param p1, "adClickListener"    # Lcom/google/android/gms/ads/internal/client/zza;
    .param p2, "adOverlayListener"    # Lcom/google/android/gms/ads/internal/overlay/zzg;
    .param p3, "appEventGmsgListener"    # Lcom/google/android/gms/internal/zzdb;
    .param p4, "leaveApplicationListener"    # Lcom/google/android/gms/ads/internal/overlay/zzp;
    .param p5, "adWebView"    # Lcom/google/android/gms/internal/zzjp;
    .param p6, "customClose"    # Z
    .param p7, "orientation"    # I
    .param p8, "html"    # Ljava/lang/String;
    .param p9, "baseUrl"    # Ljava/lang/String;
    .param p10, "versionInfo"    # Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .param p11, "inAppPurchaseGmsgListener"    # Lcom/google/android/gms/internal/zzdh;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->versionCode:I

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEA:Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEB:Lcom/google/android/gms/ads/internal/client/zza;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEC:Lcom/google/android/gms/ads/internal/overlay/zzg;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzED:Lcom/google/android/gms/internal/zzjp;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEE:Lcom/google/android/gms/internal/zzdb;

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEF:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEG:Z

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEH:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEI:Lcom/google/android/gms/ads/internal/overlay/zzp;

    iput p7, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEJ:I

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p11, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEK:Lcom/google/android/gms/internal/zzdh;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEL:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEM:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 3
    .param p1, "adLauncherIntentInfo"    # Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;
    .param p2, "adClickListener"    # Lcom/google/android/gms/ads/internal/client/zza;
    .param p3, "adOverlayListener"    # Lcom/google/android/gms/ads/internal/overlay/zzg;
    .param p4, "leaveApplicationListener"    # Lcom/google/android/gms/ads/internal/overlay/zzp;
    .param p5, "versionInfo"    # Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEA:Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEB:Lcom/google/android/gms/ads/internal/client/zza;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEC:Lcom/google/android/gms/ads/internal/overlay/zzg;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzED:Lcom/google/android/gms/internal/zzjp;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEE:Lcom/google/android/gms/internal/zzdb;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEF:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEG:Z

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEH:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEI:Lcom/google/android/gms/ads/internal/overlay/zzp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEJ:I

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEK:Lcom/google/android/gms/internal/zzdh;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEL:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEM:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    return-void
.end method

.method public static zza(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-void
.end method

.method public static zzb(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;
    .locals 2

    :try_start_0
    const-string/jumbo v0, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/overlay/zzf;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzfs()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEB:Lcom/google/android/gms/ads/internal/client/zza;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzC(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method zzft()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEC:Lcom/google/android/gms/ads/internal/overlay/zzg;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzC(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method zzfu()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzED:Lcom/google/android/gms/internal/zzjp;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzC(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method zzfv()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEE:Lcom/google/android/gms/internal/zzdb;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzC(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method zzfw()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEK:Lcom/google/android/gms/internal/zzdh;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzC(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method zzfx()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzEI:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzC(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
