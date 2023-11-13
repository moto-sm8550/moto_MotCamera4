.class public final Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;
.super Ljava/lang/Object;
.source "CaptionStyleCompat.java"


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;


# instance fields
.field public final backgroundColor:I

.field public final edgeColor:I

.field public final edgeType:I

.field public final foregroundColor:I

.field public final typeface:Landroid/graphics/Typeface;

.field public final windowColor:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v7, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    const/4 v1, -0x1

    const/high16 v2, -0x1000000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    sput-object v7, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    return-void
.end method

.method public constructor <init>(IIIIILandroid/graphics/Typeface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->foregroundColor:I

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->backgroundColor:I

    .line 4
    iput p3, p0, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->windowColor:I

    .line 5
    iput p4, p0, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->edgeType:I

    .line 6
    iput p5, p0, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->edgeColor:I

    .line 7
    iput-object p6, p0, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    return-void
.end method
