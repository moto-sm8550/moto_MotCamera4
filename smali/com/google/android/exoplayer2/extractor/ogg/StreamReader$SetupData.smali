.class public final Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;
.super Ljava/lang/Object;
.source "StreamReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupData"
.end annotation


# instance fields
.field public format:Lcom/google/android/exoplayer2/Format;

.field public oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
