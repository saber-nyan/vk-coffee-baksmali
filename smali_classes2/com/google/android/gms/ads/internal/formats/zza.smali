.class public Lcom/google/android/gms/ads/internal/formats/zza;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# static fields
.field private static final zzxI:I

.field private static final zzxJ:I

.field static final zzxK:I

.field static final zzxL:I


# instance fields
.field private final mTextColor:I

.field private final zzxM:Ljava/lang/String;

.field private final zzxN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final zzxO:I

.field private final zzxP:I

.field private final zzxQ:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xcc

    const/16 v0, 0xc

    const/16 v1, 0xae

    const/16 v2, 0xce

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/internal/formats/zza;->zzxI:I

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/internal/formats/zza;->zzxJ:I

    sget v0, Lcom/google/android/gms/ads/internal/formats/zza;->zzxJ:I

    sput v0, Lcom/google/android/gms/ads/internal/formats/zza;->zzxK:I

    sget v0, Lcom/google/android/gms/ads/internal/formats/zza;->zzxI:I

    sput v0, Lcom/google/android/gms/ads/internal/formats/zza;->zzxL:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzxM:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzxN:Ljava/util/List;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzxO:I

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->mTextColor:I

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzxP:I

    iput p6, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzxQ:I

    return-void

    :cond_0
    sget v0, Lcom/google/android/gms/ads/internal/formats/zza;->zzxK:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/google/android/gms/ads/internal/formats/zza;->zzxL:I

    goto :goto_1

    :cond_2
    const/16 v0, 0xc

    goto :goto_2
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzxO:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzxM:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->mTextColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzxP:I

    return v0
.end method

.method public zzdG()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzxN:Ljava/util/List;

    return-object v0
.end method

.method public zzdH()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzxQ:I

    return v0
.end method
