.class public final Lcom/google/android/gms/internal/zzhj$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzhj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private zzHD:I

.field private zzHE:I

.field private zzHF:F

.field private zzJQ:I

.field private zzJR:Z

.field private zzJS:Z

.field private zzJT:Ljava/lang/String;

.field private zzJU:Ljava/lang/String;

.field private zzJV:Z

.field private zzJW:Z

.field private zzJX:Z

.field private zzJY:Z

.field private zzJZ:Ljava/lang/String;

.field private zzKa:Ljava/lang/String;

.field private zzKb:I

.field private zzKc:I

.field private zzKd:I

.field private zzKe:I

.field private zzKf:I

.field private zzKg:I

.field private zzKh:D

.field private zzKi:Z

.field private zzKj:Z

.field private zzKk:I

.field private zzKl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhj$zza;->zzB(Landroid/content/Context;)V

    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/zzhj$zza;->zza(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhj$zza;->zzC(Landroid/content/Context;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string/jumbo v0, "geo:0,0?q=donuts"

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzhj$zza;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzJR:Z

    const-string/jumbo v0, "http://www.google.com"

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzhj$zza;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzJS:Z

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzJU:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzn;->zzcS()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzhI()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzJV:Z

    invoke-static {p1}, Lcom/google/android/gms/common/zze;->zzap(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzJW:Z

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzJZ:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzhj$zza;->zza(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzKa:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzHF:F

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzHD:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzHE:I

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzhj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhj$zza;->zzB(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzhj$zza;->zza(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhj$zza;->zzC(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhj$zza;->zzD(Landroid/content/Context;)V

    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzhj;->zzJR:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzJR:Z

    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzhj;->zzJS:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzJS:Z

    iget-object v0, p2, Lcom/google/android/gms/internal/zzhj;->zzJU:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzJU:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzhj;->zzJV:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzJV:Z

    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzhj;->zzJW:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzJW:Z

    iget-object v0, p2, Lcom/google/android/gms/internal/zzhj;->zzJZ:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzJZ:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzhj;->zzKa:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzKa:Ljava/lang/String;

    iget v0, p2, Lcom/google/android/gms/internal/zzhj;->zzHF:F

    iput v0, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzHF:F

    iget v0, p2, Lcom/google/android/gms/internal/zzhj;->zzHD:I

    iput v0, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzHD:I

    iget v0, p2, Lcom/google/android/gms/internal/zzhj;->zzHE:I

    iput v0, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzHE:I

    return-void
.end method

.method private zzB(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzJQ:I

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzJX:Z

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzJY:Z

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzKb:I

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzKf:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzKg:I

    return-void
.end method

.method private zzC(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v5, -0x1

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "level"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "scale"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-float v3, v3

    int-to-float v1, v1

    div-float v1, v3, v1

    float-to-double v4, v1

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzKh:D

    const/4 v1, 0x2

    if-eq v2, v1, :cond_0

    const/4 v1, 0x5

    if-ne v2, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzKi:Z

    :goto_0
    return-void

    :cond_2
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzKh:D

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzKi:Z

    goto :goto_0
.end method

.method private zzD(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzKl:Ljava/lang/String;

    return-void
.end method

.method private static zza(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method private static zza(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "market://details?id=com.google.android.gms.ads"

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzhj$zza;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private zza(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v4, -0x1

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzJT:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzKd:I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzKe:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzKc:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzKj:Z

    iput v4, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzKk:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, p2, v2, v3}, Lcom/google/android/gms/internal/zzir;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzKc:I

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzKk:I

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzKj:Z

    :cond_0
    return-void

    :cond_1
    iput v4, p0, Lcom/google/android/gms/internal/zzhj$zza;->zzKc:I

    goto :goto_0
.end method


# virtual methods
.method public zzgI()Lcom/google/android/gms/internal/zzhj;
    .locals 30

    new-instance v3, Lcom/google/android/gms/internal/zzhj;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/zzhj$zza;->zzJQ:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/gms/internal/zzhj$zza;->zzJR:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/gms/internal/zzhj$zza;->zzJS:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/zzhj$zza;->zzJT:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzhj$zza;->zzJU:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/android/gms/internal/zzhj$zza;->zzJV:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zzhj$zza;->zzJW:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/gms/internal/zzhj$zza;->zzJX:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/gms/internal/zzhj$zza;->zzJY:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/zzhj$zza;->zzJZ:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/internal/zzhj$zza;->zzKa:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/gms/internal/zzhj$zza;->zzKb:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/zzhj$zza;->zzKc:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/zzhj$zza;->zzKd:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/zzhj$zza;->zzKe:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/zzhj$zza;->zzKf:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/zzhj$zza;->zzKg:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/zzhj$zza;->zzHF:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/zzhj$zza;->zzHD:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/zzhj$zza;->zzHE:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzhj$zza;->zzKh:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzhj$zza;->zzKi:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzhj$zza;->zzKj:Z

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/zzhj$zza;->zzKk:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhj$zza;->zzKl:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-direct/range {v3 .. v29}, Lcom/google/android/gms/internal/zzhj;-><init>(IZZLjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;IIIIIIFIIDZZILjava/lang/String;)V

    return-object v3
.end method
