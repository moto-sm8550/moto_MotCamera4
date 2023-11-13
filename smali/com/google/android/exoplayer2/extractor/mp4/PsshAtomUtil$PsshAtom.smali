.class public final Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;
.super Ljava/lang/Object;
.source "PsshAtomUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PsshAtom"
.end annotation


# instance fields
.field public final schemeData:[B

.field public final uuid:Ljava/util/UUID;

.field public final version:I


# direct methods
.method public constructor <init>(Ljava/util/UUID;I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;->uuid:Ljava/util/UUID;

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;->version:I

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;->schemeData:[B

    return-void
.end method
