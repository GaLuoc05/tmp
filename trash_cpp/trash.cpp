// write your helper functions here

Node* rotate(Node* node){
    Node* left = node->pLeft;
    Node* left_right = left->pRight;
    
    // Rotate
    left->pRight = node;
    node->pLeft = left_right;
    return left;
}

Node* zag(Node* node){
    Node* right = node->pRight;
    Node* right_left = right->pLeft;
    
    // Rotate
    right->pLeft = node;
    node->pRight = right_left;
    return right;
}

void splay(Node* p) {
    int val = p->pParent->value;
    if (p->value > val){
        if (!p->pLeft) return;
        if (p->pLeft->value > value){
            splay(p->pLeft->pLeft, val);
            p = zig(p);
        }
        else if (p->pLeft->value < val){
            splay(p->pLeft->pRight, val);
            if (p->pLeft->pRight)
                p->pLeft = zag(p->pLeft);
        }
        if (not p->pLeft){
            
        }
    }
    if (p->value < val){
        if (!p->pRight) return;
        if (p->pRight->value > value){
            splay(p->pRight->pLeft, val);
            p->pRight = zig(p);
        }
        else if (p->pLeft->value < val){
            splay(p->pLeft->pRight, val);
            p->pRight = zag(p);
        }
    }

}

void insert(int val) {

}
