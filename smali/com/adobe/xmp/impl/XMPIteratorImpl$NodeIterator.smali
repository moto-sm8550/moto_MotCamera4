.class public Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/xmp/impl/XMPIteratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NodeIterator"
.end annotation


# instance fields
.field public childrenIterator:Ljava/util/Iterator;

.field public index:I

.field public path:Ljava/lang/String;

.field public returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

.field public state:I

.field public subIterator:Ljava/util/Iterator;

.field public final synthetic this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

.field public visitedNode:Lcom/adobe/xmp/impl/XMPNode;


# direct methods
.method public constructor <init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->state:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    iput p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->index:I

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    return-void
.end method

.method public constructor <init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)V
    .locals 3

    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->state:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    iput v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->index:I

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    iput-object p2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    iput v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->state:I

    invoke-virtual {p2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p2, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 2
    iput-object v0, p1, Lcom/adobe/xmp/impl/XMPIteratorImpl;->baseNS:Ljava/lang/String;

    .line 3
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->accumulatePath(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accumulatePath(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/adobe/xmp/impl/XMPNode;->parent:Lcom/adobe/xmp/impl/XMPNode;

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/adobe/xmp/impl/XMPNode;->parent:Lcom/adobe/xmp/impl/XMPNode;

    .line 4
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "["

    .line 5
    invoke-static {p1}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 6
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, ""

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p1, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    const-string p3, "/"

    :goto_0
    if-eqz p2, :cond_5

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    .line 9
    iget-object p0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->options:Lcom/adobe/xmp/options/IteratorOptions;

    const/16 v0, 0x400

    .line 10
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "?"

    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    .line 12
    :cond_4
    invoke-static {p2, p3, p1}, Landroidx/core/graphics/PathParser$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    return-object p1

    :cond_6
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final createPropertyInfo(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPPropertyInfo;
    .locals 0

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p0, p1, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 2
    :goto_0
    new-instance p1, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;

    invoke-direct {p1, p2, p3, p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
.end method

.method public hasNext()Z
    .locals 4

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->state:I

    if-nez v0, :cond_3

    .line 1
    iput v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->state:I

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    .line 2
    iget-object v0, v0, Lcom/adobe/xmp/impl/XMPNode;->parent:Lcom/adobe/xmp/impl/XMPNode;

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    .line 4
    iget-object v0, v0, Lcom/adobe/xmp/impl/XMPIteratorImpl;->options:Lcom/adobe/xmp/options/IteratorOptions;

    const/16 v2, 0x200

    .line 5
    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    .line 7
    iget-object v2, v2, Lcom/adobe/xmp/impl/XMPIteratorImpl;->baseNS:Ljava/lang/String;

    .line 8
    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->path:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->createPropertyInfo(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPPropertyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->hasNext()Z

    move-result v1

    :goto_0
    return v1

    :cond_3
    if-ne v0, v1, :cond_6

    .line 9
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    :cond_4
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->iterateChildren(Ljava/util/Iterator;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    .line 10
    iget-object v1, v1, Lcom/adobe/xmp/impl/XMPIteratorImpl;->options:Lcom/adobe/xmp/options/IteratorOptions;

    const/16 v2, 0x1000

    .line 11
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->state:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->hasNext()Z

    move-result v0

    :cond_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->visitedNode:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    :cond_7
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->childrenIterator:Ljava/util/Iterator;

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->iterateChildren(Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method public final iterateChildren(Ljava/util/Iterator;)Z
    .locals 5

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adobe/xmp/impl/XMPNode;

    iget v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->index:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->index:I

    new-instance v2, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;

    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    iget-object v4, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->path:Ljava/lang/String;

    invoke-direct {v2, v3, p1, v4, v0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;-><init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    :cond_0
    iget-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->subIterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adobe/xmp/properties/XMPPropertyInfo;

    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "There are no more nodes to return"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
