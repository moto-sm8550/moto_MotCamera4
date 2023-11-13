.class public final Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;
.super Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/xmp/impl/XMPIteratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NodeIteratorChildren"
.end annotation


# instance fields
.field public childrenIterator:Ljava/util/Iterator;

.field public index:I

.field public parentPath:Ljava/lang/String;

.field public final synthetic this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;


# direct methods
.method public constructor <init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-direct {p0, p1}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;-><init>(Lcom/adobe/xmp/impl/XMPIteratorImpl;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->index:I

    invoke-virtual {p2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p2, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 2
    iput-object v0, p1, Lcom/adobe/xmp/impl/XMPIteratorImpl;->baseNS:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p2, p3, p1}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->accumulatePath(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->parentPath:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->childrenIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->childrenIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->childrenIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    iget v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->index:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->index:I

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    .line 3
    iget-object v4, v0, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 4
    iput-object v4, v3, Lcom/adobe/xmp/impl/XMPIteratorImpl;->baseNS:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v3, v0, Lcom/adobe/xmp/impl/XMPNode;->parent:Lcom/adobe/xmp/impl/XMPNode;

    if-eqz v3, :cond_2

    .line 6
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->parentPath:Ljava/lang/String;

    iget v3, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->index:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->accumulatePath(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    .line 7
    iget-object v3, v3, Lcom/adobe/xmp/impl/XMPIteratorImpl;->options:Lcom/adobe/xmp/options/IteratorOptions;

    const/16 v4, 0x200

    .line 8
    invoke-virtual {v3, v4}, Lcom/adobe/xmp/options/Options;->getOption(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->hasNext()Z

    move-result p0

    return p0

    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIteratorChildren;->this$0:Lcom/adobe/xmp/impl/XMPIteratorImpl;

    .line 10
    iget-object v3, v3, Lcom/adobe/xmp/impl/XMPIteratorImpl;->baseNS:Ljava/lang/String;

    .line 11
    invoke-virtual {p0, v0, v3, v2}, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->createPropertyInfo(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPPropertyInfo;

    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;->returnProperty:Lcom/adobe/xmp/properties/XMPPropertyInfo;

    return v1

    :cond_5
    return v0
.end method
