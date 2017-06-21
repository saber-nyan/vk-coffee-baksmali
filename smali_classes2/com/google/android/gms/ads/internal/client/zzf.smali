.class public final Lcom/google/android/gms/ads/internal/client/zzf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private zzbj:Landroid/location/Location;

.field private zzpE:Z

.field private zztS:J

.field private zztT:I

.field private zztU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zztV:Z

.field private zztW:I

.field private zztX:Ljava/lang/String;

.field private zztY:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

.field private zztZ:Ljava/lang/String;

.field private zzua:Landroid/os/Bundle;

.field private zzub:Landroid/os/Bundle;

.field private zzuc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzud:Ljava/lang/String;

.field private zzue:Ljava/lang/String;

.field private zzuf:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zztS:J

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->mExtras:Landroid/os/Bundle;

    iput v4, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zztT:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zztU:Ljava/util/List;

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zztV:Z

    iput v4, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zztW:I

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzpE:Z

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zztX:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zztY:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzbj:Landroid/location/Location;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zztZ:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzua:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzub:Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzuc:Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzud:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzue:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzuf:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztC:J

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zztS:J

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->mExtras:Landroid/os/Bundle;

    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztD:I

    iput v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zztT:I

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztE:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zztU:Ljava/util/List;

    iget-boolean v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztF:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zztV:Z

    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztG:I

    iput v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zztW:I

    iget-boolean v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztH:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzpE:Z

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztI:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zztX:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztJ:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zztY:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztK:Landroid/location/Location;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzbj:Landroid/location/Location;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztL:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zztZ:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztM:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzua:Landroid/os/Bundle;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztN:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzub:Landroid/os/Bundle;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztO:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzuc:Ljava/util/List;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztP:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzud:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztQ:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zza(Landroid/location/Location;)Lcom/google/android/gms/ads/internal/client/zzf;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzf;->zzbj:Landroid/location/Location;

    return-object p0
.end method

.method public zzcN()Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .locals 22

    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zztS:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/client/zzf;->mExtras:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zztT:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zztU:Ljava/util/List;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zztV:Z

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zztW:I

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zzpE:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zztX:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zztY:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zzbj:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zztZ:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zzua:Landroid/os/Bundle;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zzub:Landroid/os/Bundle;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zzuc:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zzud:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zzue:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/zzf;->zzuf:Z

    move/from16 v21, v0

    invoke-direct/range {v2 .. v21}, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2
.end method
