.class public final Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field public final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public final zzHA:Landroid/os/Bundle;

.field public final zzHB:Z

.field public final zzHC:Landroid/os/Messenger;

.field public final zzHD:I

.field public final zzHE:I

.field public final zzHF:F

.field public final zzHG:Ljava/lang/String;

.field public final zzHH:J

.field public final zzHI:Ljava/lang/String;

.field public final zzHJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzHK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzHM:Lcom/google/android/gms/ads/internal/request/CapabilityParcel;

.field public final zzHN:Ljava/lang/String;

.field public final zzHO:F

.field public final zzHP:I

.field public final zzHQ:I

.field public final zzHs:Landroid/os/Bundle;

.field public final zzHt:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field public final zzHu:Landroid/content/pm/PackageInfo;

.field public final zzHw:Ljava/lang/String;

.field public final zzHx:Ljava/lang/String;

.field public final zzHy:Landroid/os/Bundle;

.field public final zzHz:I

.field public final zzrD:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field public final zzrH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzri:Ljava/lang/String;

.field public final zzrj:Ljava/lang/String;

.field public final zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;ZLandroid/os/Messenger;IIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Lcom/google/android/gms/ads/internal/request/CapabilityParcel;Ljava/lang/String;FII)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/google/android/gms/ads/internal/client/AdRequestParcel;",
            "Lcom/google/android/gms/ads/internal/client/AdSizeParcel;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Z",
            "Landroid/os/Messenger;",
            "IIF",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;",
            "Lcom/google/android/gms/ads/internal/request/CapabilityParcel;",
            "Ljava/lang/String;",
            "FII)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHs:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHt:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzrj:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHu:Landroid/content/pm/PackageInfo;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHw:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHx:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHy:Landroid/os/Bundle;

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHB:Z

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHC:Landroid/os/Messenger;

    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHD:I

    move/from16 v0, p17

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHE:I

    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHF:F

    if-eqz p11, :cond_0

    invoke-interface {p11}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHz:I

    iput-object p11, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzrH:Ljava/util/List;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHK:Ljava/util/List;

    :goto_0
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHA:Landroid/os/Bundle;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHG:Ljava/lang/String;

    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHH:J

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHI:Ljava/lang/String;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHJ:Ljava/util/List;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzri:Ljava/lang/String;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzrD:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHM:Lcom/google/android/gms/ads/internal/request/CapabilityParcel;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHN:Ljava/lang/String;

    move/from16 v0, p28

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHO:F

    move/from16 v0, p29

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHP:I

    move/from16 v0, p30

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHQ:I

    return-void

    :cond_0
    iget-boolean v2, p3, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzum:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    iput v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHz:I

    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzrH:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHK:Ljava/util/List;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzHz:I

    goto :goto_1
.end method
