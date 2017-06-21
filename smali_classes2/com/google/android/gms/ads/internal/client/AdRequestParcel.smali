.class public final Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/ads/internal/client/zzg;


# instance fields
.field public final extras:Landroid/os/Bundle;

.field public final versionCode:I

.field public final zztC:J

.field public final zztD:I

.field public final zztE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zztF:Z

.field public final zztG:I

.field public final zztH:Z

.field public final zztI:Ljava/lang/String;

.field public final zztJ:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

.field public final zztK:Landroid/location/Location;

.field public final zztL:Ljava/lang/String;

.field public final zztM:Landroid/os/Bundle;

.field public final zztN:Landroid/os/Bundle;

.field public final zztO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zztP:Ljava/lang/String;

.field public final zztQ:Ljava/lang/String;

.field public final zztR:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->CREATOR:Lcom/google/android/gms/ads/internal/client/zzg;

    return-void
.end method

.method public constructor <init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "versionCode"    # I
    .param p2, "birthday"    # J
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "gender"    # I
    .param p7, "isTestDevice"    # Z
    .param p8, "tagForChildDirectedTreatment"    # I
    .param p9, "manualImpressionsEnabled"    # Z
    .param p10, "publisherProvidedId"    # Ljava/lang/String;
    .param p11, "searchAdRequestParcel"    # Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;
    .param p12, "location"    # Landroid/location/Location;
    .param p13, "contentUrl"    # Ljava/lang/String;
    .param p14, "networkExtras"    # Landroid/os/Bundle;
    .param p15, "customTargeting"    # Landroid/os/Bundle;
    .param p17, "requestAgent"    # Ljava/lang/String;
    .param p18, "requestPackage"    # Ljava/lang/String;
    .param p19, "isDesignedForFamilies"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZIZ",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p6, "keywords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p16, "categoryExclusions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztC:J

    if-nez p4, :cond_0

    new-instance p4, Landroid/os/Bundle;

    .end local p4    # "extras":Landroid/os/Bundle;
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iput-object p4, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    iput p5, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztD:I

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztE:Ljava/util/List;

    iput-boolean p7, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztF:Z

    iput p8, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztG:I

    iput-boolean p9, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztH:Z

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztI:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztJ:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    iput-object p12, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztK:Landroid/location/Location;

    iput-object p13, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztL:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztM:Landroid/os/Bundle;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztN:Landroid/os/Bundle;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztO:Ljava/util/List;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztP:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztQ:Ljava/lang/String;

    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztR:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    if-nez v1, :cond_1

    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    .end local p1    # "other":Ljava/lang/Object;
    iget v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    iget v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztC:J

    iget-wide v4, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztC:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztD:I

    iget v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztD:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztE:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztE:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztF:Z

    iget-boolean v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztF:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztG:I

    iget v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztG:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztH:Z

    iget-boolean v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztH:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztI:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztI:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztJ:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztJ:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztK:Landroid/location/Location;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztK:Landroid/location/Location;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztL:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztL:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztM:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztM:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztN:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztN:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztO:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztO:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztP:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztP:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztQ:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztQ:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztR:Z

    iget-boolean v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztR:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztC:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztD:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztE:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztF:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztG:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztH:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztI:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztJ:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztK:Landroid/location/Location;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztL:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztM:Landroid/os/Bundle;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztN:Landroid/os/Bundle;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztO:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztP:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztQ:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zztR:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzg;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Landroid/os/Parcel;I)V

    return-void
.end method
