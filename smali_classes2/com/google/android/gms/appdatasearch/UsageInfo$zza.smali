.class public final Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/appdatasearch/UsageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private zzOJ:Ljava/lang/String;

.field private zzUs:Lcom/google/android/gms/appdatasearch/DocumentId;

.field private zzUt:J

.field private zzUu:I

.field private zzUv:Lcom/google/android/gms/appdatasearch/DocumentContents;

.field private zzUw:Z

.field private zzUx:I

.field private zzUy:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzUt:J

    iput v2, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzUu:I

    iput v2, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzUx:I

    iput-boolean v3, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzUw:Z

    iput v3, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzUy:I

    return-void
.end method


# virtual methods
.method public zzO(Z)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzUw:Z

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/appdatasearch/DocumentContents;)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzUv:Lcom/google/android/gms/appdatasearch/DocumentContents;

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/appdatasearch/DocumentId;)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzUs:Lcom/google/android/gms/appdatasearch/DocumentId;

    return-object p0
.end method

.method public zzar(I)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzUu:I

    return-object p0
.end method

.method public zzas(I)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzUy:I

    return-object p0
.end method

.method public zzmi()Lcom/google/android/gms/appdatasearch/UsageInfo;
    .locals 11

    new-instance v0, Lcom/google/android/gms/appdatasearch/UsageInfo;

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzUs:Lcom/google/android/gms/appdatasearch/DocumentId;

    iget-wide v2, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzUt:J

    iget v4, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzUu:I

    iget-object v5, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzOJ:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzUv:Lcom/google/android/gms/appdatasearch/DocumentContents;

    iget-boolean v7, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzUw:Z

    iget v8, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzUx:I

    iget v9, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzUy:I

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/appdatasearch/UsageInfo;-><init>(Lcom/google/android/gms/appdatasearch/DocumentId;JILjava/lang/String;Lcom/google/android/gms/appdatasearch/DocumentContents;ZIILcom/google/android/gms/appdatasearch/UsageInfo$1;)V

    return-object v0
.end method

.method public zzw(J)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzUt:J

    return-object p0
.end method
