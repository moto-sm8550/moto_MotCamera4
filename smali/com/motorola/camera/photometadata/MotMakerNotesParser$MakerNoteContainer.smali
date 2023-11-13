.class public final Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;
.super Ljava/lang/Object;
.source "MotMakerNotesParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/photometadata/MotMakerNotesParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MakerNoteContainer"
.end annotation


# instance fields
.field public final bytes:[B

.field public final count:I

.field public final type:I


# direct methods
.method public constructor <init>(II[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->type:I

    .line 3
    iput p2, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->count:I

    .line 4
    iput-object p3, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->bytes:[B

    return-void
.end method
