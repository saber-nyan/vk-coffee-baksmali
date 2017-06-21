.class public Lcom/google/android/gms/appdatasearch/DocumentSection;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/zzd;

.field public static final zzTM:I

.field private static final zzTN:Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;


# instance fields
.field final mVersionCode:I

.field public final zzTO:Ljava/lang/String;

.field final zzTP:Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

.field public final zzTQ:I

.field public final zzTR:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "-1"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/appdatasearch/DocumentSection;->zzTM:I

    new-instance v0, Lcom/google/android/gms/appdatasearch/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/DocumentSection;->CREATOR:Lcom/google/android/gms/appdatasearch/zzd;

    new-instance v0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    const-string/jumbo v1, "SsbContext"

    invoke-direct {v0, v1}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzM(Z)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    move-result-object v0

    const-string/jumbo v1, "blob"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzbB(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzmh()Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/appdatasearch/DocumentSection;->zzTN:Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;I[B)V
    .locals 3
    .param p1, "versionCode"    # I
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "sectionInfo"    # Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;
    .param p4, "globalSearchSectionType"    # I
    .param p5, "blobContent"    # [B

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/gms/appdatasearch/DocumentSection;->zzTM:I

    if-eq p4, v0, :cond_0

    invoke-static {p4}, Lcom/google/android/gms/appdatasearch/zzh;->zzao(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid section type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->zzTO:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->zzTP:Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    iput p4, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->zzTQ:I

    iput-object p5, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->zzTR:[B

    invoke-virtual {p0}, Lcom/google/android/gms/appdatasearch/DocumentSection;->zzmf()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;)V
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "sectionInfo"    # Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    .prologue
    const/4 v1, 0x1

    sget v4, Lcom/google/android/gms/appdatasearch/DocumentSection;->zzTM:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/appdatasearch/DocumentSection;-><init>(ILjava/lang/String;Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;I[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;Ljava/lang/String;)V
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "sectionInfo"    # Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;
    .param p3, "globalSearchSectionType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    invoke-static {p3}, Lcom/google/android/gms/appdatasearch/zzh;->zzbA(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/appdatasearch/DocumentSection;-><init>(ILjava/lang/String;Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;I[B)V

    return-void
.end method

.method public constructor <init>([BLcom/google/android/gms/appdatasearch/RegisterSectionInfo;)V
    .locals 6
    .param p1, "blobContent"    # [B
    .param p2, "sectionInfo"    # Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v4, Lcom/google/android/gms/appdatasearch/DocumentSection;->zzTM:I

    move-object v0, p0

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/appdatasearch/DocumentSection;-><init>(ILjava/lang/String;Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;I[B)V

    return-void
.end method

.method public static zzh([B)Lcom/google/android/gms/appdatasearch/DocumentSection;
    .locals 2

    new-instance v0, Lcom/google/android/gms/appdatasearch/DocumentSection;

    sget-object v1, Lcom/google/android/gms/appdatasearch/DocumentSection;->zzTN:Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/appdatasearch/DocumentSection;-><init>([BLcom/google/android/gms/appdatasearch/RegisterSectionInfo;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/DocumentSection;->CREATOR:Lcom/google/android/gms/appdatasearch/zzd;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/appdatasearch/DocumentSection;->CREATOR:Lcom/google/android/gms/appdatasearch/zzd;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/zzd;->zza(Lcom/google/android/gms/appdatasearch/DocumentSection;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzmf()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->zzTQ:I

    sget v1, Lcom/google/android/gms/appdatasearch/DocumentSection;->zzTM:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->zzTQ:I

    invoke-static {v0}, Lcom/google/android/gms/appdatasearch/zzh;->zzao(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid section type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->zzTQ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->zzTO:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->zzTR:[B

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Both content and blobContent set"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
