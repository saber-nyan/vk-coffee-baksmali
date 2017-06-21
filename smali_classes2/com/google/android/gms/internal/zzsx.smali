.class public final Lcom/google/android/gms/internal/zzsx;
.super Ljava/lang/Object;


# static fields
.field public static final zzbuA:[Z

.field public static final zzbuB:[Ljava/lang/String;

.field public static final zzbuC:[[B

.field public static final zzbuD:[B

.field public static final zzbuw:[I

.field public static final zzbux:[J

.field public static final zzbuy:[F

.field public static final zzbuz:[D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuw:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/zzsx;->zzbux:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuy:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuz:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuA:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuB:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuC:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/zzsx;->zzbuD:[B

    return-void
.end method

.method static zzF(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzsm;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsm;->zzmo(I)Z

    move-result v0

    return v0
.end method

.method public static final zzc(Lcom/google/android/gms/internal/zzsm;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsm;->getPosition()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsm;->zzmo(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsm;->zzIX()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsm;->zzmo(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzsm;->zzms(I)V

    return v0
.end method

.method static zzmI(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static zzmJ(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method
