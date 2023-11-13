.class public final Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;
.super Ljava/lang/Object;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cea708CueInfo"
.end annotation


# instance fields
.field public final cue:Lcom/google/android/exoplayer2/text/Cue;

.field public final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIFIZII)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p7, :cond_0

    move/from16 v16, p8

    goto :goto_0

    :cond_0
    const/high16 v1, -0x1000000

    move/from16 v16, v1

    .line 2
    :goto_0
    new-instance v15, Lcom/google/android/exoplayer2/text/Cue;

    move-object v1, v15

    const/16 v18, 0x0

    const/4 v5, 0x0

    move-object v4, v5

    const/4 v7, 0x0

    const/high16 v11, -0x80000000

    move/from16 v17, v11

    const v14, -0x800001

    move v12, v14

    const v13, -0x800001

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v19, v15

    move/from16 v15, p7

    invoke-direct/range {v1 .. v18}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    move-object/from16 v1, v19

    .line 3
    iput-object v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;->cue:Lcom/google/android/exoplayer2/text/Cue;

    move/from16 v1, p9

    .line 4
    iput v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;->priority:I

    return-void
.end method
